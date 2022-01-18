;; variables config ======================================================================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(column-number-mode t)
 '(completion-cycle-threshold 5)
 '(completion-styles '(basic partial-completion initials flex))
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   '("353ffc8e6b53a91ac87b7e86bebc6796877a0b76ddfc15793e4d7880976132ae" default))
 '(display-battery-mode t)
 '(display-line-numbers-type nil)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-format "%R %p %F")
 '(display-time-mode t)
 '(doom-modeline-height 25)
 '(doom-modeline-hud t)
 '(doom-modeline-icon t)
 '(doom-modeline-modal-icon nil)
 '(doom-modeline-mode t)
 '(evil-undo-system 'undo-redo)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(horizontal-scroll-bar-mode nil)
 '(indicate-empty-lines nil)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages '(doom-modeline doom-themes evil ##))
 '(read-quoted-char-radix 16)
 '(ring-bell-function 'ignore)
 '(save-place-mode t)
 '(scroll-bar-mode nil)
 '(scroll-margin 3)
 '(scroll-step 1)
 '(set-mark-command-repeat-pop t)
 '(show-paren-mode t)
 '(show-trailing-whitespace nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(what-cursor-show-names t)
 '(x-stretch-cursor t))

;; faces config ==========================================================================================================
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrainsMono NF" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
(set-face-attribute 'default nil :font "JetBrainsMono NF 12")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset
		    (font-spec :family "Sarasa Term SC" :size 23)))

;; key binding config ====================================================================================================
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; package config ========================================================================================================
;; (push (expand-file-name "lisp" user-emacs-directory) load-path)
;; (push (expand-file-name "elpa" user-emacs-directory) load-path)
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
(require 'evil)
(evil-mode t)
(require 'doom-modeline)
(doom-modeline-mode t)
(require 'doom-themes)
(load-theme 'doom-tokyo-night)
;; ayu
;; ocean-next
;; rouge
;; one
;; monokai-mach
;; 
;; dracula
;; monokai-oct
;; moonlight
;; palenight
;; tokyo-night
;; 
;; gruv-box
;; mater-dark
;; monokai-cla
;; monokai-sp
;; old-hope
;; tomorrow-night
;;
;; soucerer
;; ir
;; plain-dark
;; wilmer
