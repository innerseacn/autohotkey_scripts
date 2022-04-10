;; -*- lexical-binding: t; -*-
;; auto custom config ======================================================================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline success warning error])
 '(auto-save-default nil)
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#323232")
 '(column-number-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(completion-cycle-threshold 5)
 '(cua-enable-cua-keys nil)
 '(cua-enable-modeline-indications t)
 '(delete-selection-mode t)
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-format "%R %p %F")
 '(display-time-mode t)
 '(electric-pair-mode t)
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-theme-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-theme-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-theme-fringe-yellow))
 '(global-auto-revert-mode nil)
 '(global-hl-line-mode t)
 '(history-length 25)
 '(hl-todo-keyword-faces
   '(("HOLD" . "#cfdf30")
     ("TODO" . "#feacd0")
     ("NEXT" . "#b6a0ff")
     ("THEM" . "#f78fe7")
     ("PROG" . "#00d3d0")
     ("OKAY" . "#4ae8fc")
     ("DONT" . "#80d200")
     ("FAIL" . "#ff8059")
     ("BUG" . "#ff8059")
     ("DONE" . "#44bc44")
     ("NOTE" . "#f0ce43")
     ("KLUDGE" . "#eecc00")
     ("HACK" . "#eecc00")
     ("TEMP" . "#ffcccc")
     ("FIXME" . "#ff9977")
     ("XXX+" . "#f4923b")
     ("REVIEW" . "#6ae4b9")
     ("DEPRECATED" . "#bfd9ff")))
 '(horizontal-scroll-bar-mode nil)
 '(ibuffer-deletion-face 'modus-theme-mark-del)
 '(ibuffer-filter-group-name-face 'modus-theme-mark-symbol)
 '(ibuffer-marked-face 'modus-theme-mark-sel)
 '(ibuffer-title-face 'modus-theme-pseudo-header)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control))))
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-agenda-files '("~/1.org"))
 '(org-catch-invisible-edits 'smart)
 '(org-clock-idle-time 10)
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(org-goto-auto-isearch nil)
 '(org-log-into-drawer t)
 '(org-table-header-line-p t)
 '(package-selected-packages
   '(wgrep vertico orderless marginalia julia-mode evil embark-consult doom-themes doom-modeline company))
 '(read-quoted-char-radix 16)
 '(recentf-mode t)
 '(ring-bell-function 'ignore)
 '(save-place-mode t)
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(scroll-margin 3)
 '(scroll-step 1)
 '(set-mark-command-repeat-pop t)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(size-indication-mode t)
 '(split-width-threshold 120)
 '(tool-bar-mode nil)
 '(use-dialog-box nil)
 '(vc-annotate-background-mode nil)
 '(visible-bell t)
 '(what-cursor-show-names t)
 '(winner-mode t)
 '(x-stretch-cursor t)
 '(xterm-color-names
   ["#000000" "#ff8059" "#44bc44" "#eecc00" "#2fafff" "#feacd0" "#00d3d0" "#a8a8a8"])
 '(xterm-color-names-bright
   ["#181a20" "#f4923b" "#80d200" "#cfdf30" "#79a8ff" "#f78fe7" "#4ae8fc" "#ffffff"]))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrainsMono NF" :foundry "outline" :slant normal :weight normal :height 120 :width normal))))
 '(trailing-whitespace ((t (:background "gray0")))))

;; custom-file config ====================================================================================================
;; (setq custom-file (locate-user-emacs-file "custom-vars.el"))
;; (load custom-file 'noerror 'nomessage)

;; faces config ==========================================================================================================
(set-face-attribute 'default nil :font "JetBrainsMono NF 12")
(if (display-graphic-p)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font) charset
			(font-spec :family "Sarasa Term SC" :size 24))))

;; (add-hook 'org-mode-hook
;; 	  '(set-face-attribute 'org-table nil :font "Sarasa Term SC 12"))

;; key binding config ====================================================================================================
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(defun open-init-file()
  (interactive)
  (find-file "~/pyprojs/autohotkey_scripts/init.el")) ; TODO: remember to change the file name.
(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "C-?") 'undo-redo)
(global-set-key (kbd "C-M-<backspace>") 'backward-kill-sexp)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-x f") 'recentf-open-files)
(global-set-key (kbd "C-x C-/") 'winner-undo)
(global-set-key (kbd "C-x C-?") 'winner-redo)
(global-set-key (kbd "<f5>") 'desktop-save)
(global-set-key (kbd "<f6>") 'desktop-read)
(global-set-key (kbd "C-<return>") 'cua-rectangle-mark-mode)
(global-set-key (kbd "C-M-<return>") 'cua-rectangle-mark-mode)
(global-set-key (kbd "C-x C-1") 'delete-windows-on)
(global-set-key (kbd "<f12>") 'delete-other-windows)
(global-set-key (kbd "C-x C-q") 'view-mode)
(global-set-key (kbd "C-x C-d") 'dired)

(add-hook 'dired-mode-hook
          (lambda ()
            (define-key dired-mode-map
              (kbd "C-c C-x a")
              #'org-attach-dired-to-subtree)))

;; package config ========================================================================================================
;; (push (expand-file-name "lisp" user-emacs-directory) load-path)
;; (push (expand-file-name "elpa" user-emacs-directory) load-path)
(global-set-key (kbd "C-x b") 'consult-buffer)

(setq package-archives '(("gnu"   . "http://mirrors.bfsu.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.bfsu.edu.cn/elpa/melpa/")
			 ("Org" . "http://mirrors.bfsu.edu.cn/elpa/org/")
			 ("nongnu" . "http://mirrors.bfsu.edu.cn/elpa/nongnu/")))
;; (setq package-check-signature nil)
;; (require 'package)
;; (unless (bound-and-true-p package--initialized)
;;   (package-initialize))
;; (unless package-archive-contents
;;   (package-refresh-contents))
;; (unless (package-installed-p 'evil)
;;   (package-install 'evil))
(let ((default-directory (expand-file-name "elpa" user-emacs-directory)))
  (normal-top-level-add-subdirs-to-load-path))
(require 'doom-themes)
(load-theme 'doom-badger t)

(require 'evil)
;; (evil-mode t)
;; (evil-undo-system 'undo-redo)
(require 'doom-modeline)
(doom-modeline-mode t)
;; (doom-modeline-height 25)
;; (doom-modeline-hud t)
;; (doom-modeline-icon t)
;; (doom-modeline-modal-icon nil)
(require 'company)
(global-company-mode t)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
(require 'vertico)
(vertico-mode t)
(require 'orderless)
(setq completion-styles '(orderless))
(require 'marginalia)
(marginalia-mode t)
(require 'embark)
(global-set-key (kbd "C-:") 'embark-act)
(setq prefix-help-command 'embark-prefix-help-command)
(require 'consult)
(global-set-key (kbd "C-;") 'consult-line)
(global-set-key (kbd "C-,") 'consult-imenu)
(require 'wgrep)
(setq wgrep-auto-save-buffer t)
(eval-after-load 'consult
  '(eval-after-load 'embark
     '(progn
	(require 'embark-consult)
	(add-hook 'embark-collect-mode-hook #'consult-preview-at-point-mode))))
(define-key minibuffer-local-map (kbd "C-c C-e") 'embark-export-write)
(eval-after-load 'consult
  (progn
    (setq
     consult-narrow-key "<"
     consult-line-numbers-widen t
     consult-async-min-input 2
     consult-async-refresh-delay  0.15
     consult-async-input-throttle 0.2
     consult-async-input-debounce 0.1)
    ))
;; (require 'pyim)
;; (require 'magit)


  ;; - doom-badger
  ;; - doom-gruvbox
  ;; - doom-material-dark
  ;; - doom-monokai-machine
  ;; - doom-monokai-octagon
  ;; - doom-monokai-spectrum
  ;; - doom-moonlight
  ;; - doom-nord
  ;; - doom-oceanic-next
  ;; - doom-old-hope
  ;; - doom-wilmersdorf
