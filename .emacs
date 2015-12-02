(require 'package)
(push '("melpa" . "http://melpa.milkbox.net/packages/")
	package-archives)
(package-initialize)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
;; (setq scroll-step 1) ;; keyboard scroll one line at a time

(global-linum-mode 1)
(require 'evil)
(evil-mode 1)
(tool-bar-mode -1)
(electric-pair-mode 1)
(desktop-save-mode 1)
(set-default-font "Menlo 14")
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq js-indent-level 2)
(require 'powerline)
(powerline-vim-theme)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(setq web-mode-content-types-alist
  '(("jsx" . "\\.js[x]?\\'")))
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
(when (eq system-type 'darwin)
  (setq mac-option-modifier nil)
  (setq mac-command-modifier 'meta)
  (global-set-key (kbd "M-q") 'save-buffers-kill-terminal))

(setq visible-bell t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (gruvbox)))
 '(custom-safe-themes
   (quote
    ("5d1434865473463d79ee0523c1ae60ecb731ab8d134a2e6f25c17a2b497dd459" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
