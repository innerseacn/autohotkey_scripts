#!/usr/bin/env python3
"""
Download Bilibili video subtitles from kedou.life using Playwright browser automation.

Usage:
    python kedou_subtitle.py "https://www.bilibili.com/video/BV1xx411c7mD"
    python kedou_subtitle.py "https://www.bilibili.com/video/BV1xxx" -o subtitle.txt
    python kedou_subtitle.py --help
"""

import argparse
import re
import sys

from playwright.sync_api import sync_playwright


def extract_video_id(url: str) -> str:
    """Extract video ID (BV or AV) from various Bilibili URL formats."""
    url = url.strip()

    # b23.tv short URL
    b23_match = re.match(r"https?://b23\.tv/(\w+)", url)
    if b23_match:
        return b23_match.group(1)

    # BV format: BV + 10 chars (digits, uppercase letters)
    bv_match = re.search(r"BV([A-Za-z0-9]{10})", url)
    if bv_match:
        return f"BV{bv_match.group(1)}"

    # AV format: av + digits
    av_match = re.search(r"av(\d+)", url, re.IGNORECASE)
    if av_match:
        return f"av{av_match.group(1)}"

    # Already just the ID
    if url.startswith("BV") or url.startswith("bv"):
        return url.upper()
    if re.match(r"^[Aa][Vv]?\d+$", url):
        return url.lower()

    raise ValueError(f"Could not extract video ID from URL: {url}")


def clean_text(text: str) -> str:
    """Clean HTML tags, entities, timestamps, and filter lines."""

    # Filter lines: remove empty lines and number-only lines
    lines = text.split("\n")
    filtered = []
    for line in lines:
        line = line.strip()
        if not line:
            continue
        if line.isdigit():
            continue
        if "-->" in line:
            continue
        filtered.append(line)

    return "\n".join(filtered)


def fetch_subtitles(video_id: str, verbose: bool = False) -> (str, str):
    video_url = f"https://www.bilibili.com/video/{video_id}"

    def log(msg: str):
        if verbose:
            print(f"[VERBOSE] {msg}", file=sys.stderr)
            page.screenshot(path=f"png/{msg}.png")
        else:
            print(msg, file=sys.stderr)

    with sync_playwright() as p:
        browser = p.chromium.launch(
            headless=True,
            args=[
                "--no-sandbox",
                "--disable-setuid-sandbox",
                "--disable-dev-shm-usage",
                "--font-mapping-mt-ly_1=10",
            ],
        )
        page = browser.new_page()

        try:
            log("1. 打开 kedou.life 字幕页面...")
            page.goto(
                "https://www.kedou.life/caption/subtitle/bilibili",
                timeout=60000,
                wait_until="domcontentloaded",
            )
            log("2. 页面加载完成")

            page.fill("input.el-input__inner", video_url)
            log("3. 填入URL...")

            page.click("button.el-button.el-button--primary")
            log("4. 点击提取按钮...")

            page.screenshot()
            page.wait_for_selector("div.mt-3.mb-16", timeout=120000)
            log("5. 等待字幕结果...")
            subtitle_box = page.locator("div.mt-3.mb-16")

            subtitle_title = (
                subtitle_box.locator("div.flex.pb-3.text-lg.border-b.border-solid")
                .nth(1)
                .inner_text()
            )
            log(f"6. 发现视频名称：{subtitle_title}")

            subtitle_zh = subtitle_box.get_by_text("语言：中文").locator("../..")
            subtitle_zh.get_by_text("查看").click()
            log("7. 查看字幕内容...")

            page.wait_for_selector("textarea.el-textarea__inner", timeout=30000)
            srt_content = (
                subtitle_box.locator("..")
                .locator("textarea.el-textarea__inner")
                .input_value()
            )
            log(f"8. 字幕内容长度: {len(srt_content)} 字符")

            srt_clean = clean_text(srt_content)

            return subtitle_title, srt_clean

        except Exception as e:
            log(f"发生错误: {e}")
            raise

        finally:
            log("关闭浏览器")
            browser.close()


def main():
    parser = argparse.ArgumentParser(
        prog="kedou_subtitle",
        description="Download Bilibili video subtitles from kedou.life using Playwright browser automation.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
    python kedou_subtitle.py "https://www.bilibili.com/video/BV1xx411c7mD"
    python kedou_subtitle.py "https://www.bilibili.com/video/BV1xxx" -o subtitle.txt
    python kedou_subtitle.py -o output.txt av123456
""",
    )

    parser.add_argument("url", nargs="?", help="Bilibili video URL (BV, AV, or b23.tv)")
    parser.add_argument(
        "-o", "--output", dest="output_file", help="Output file path (default: stdout)"
    )
    parser.add_argument(
        "-v", "--verbose", action="store_true", help="Show verbose debug output"
    )
    parser.add_argument(
        "--version", action="version", version="%(prog)s 2.0 (Playwright)"
    )

    args = parser.parse_args()

    if not args.url:
        parser.print_help()
        return 0

    try:
        video_id = extract_video_id(args.url)
    except ValueError as e:
        print(f"Error: {e}", file=sys.stderr)
        return 1

    try:
        title, srt = fetch_subtitles(video_id, verbose=args.verbose)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        return 1

    if args.output_file:
        with open(args.output_file, "w", encoding="utf-8") as f:
            f.write(srt + "\n")
        print(f"Subtitles saved to {args.output_file}")
    else:
        print(srt)

    return 0


if __name__ == "__main__":
    exit(main() or 0)
