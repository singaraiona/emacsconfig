;;; init --- Summary
;;; Commentary:
;;; Code:
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(setq load-path (append '("~/.emacs.d/setup") load-path))
(setq load-path (append '("~/.emacs.d/parts") load-path))
(setq load-path (append '("~/.emacs.d/plugins") load-path))
(package-refresh-contents)
(require 'installed)
(unless package-archive-contents
  (package-refresh-contents))
; install required packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
(require 'actions)
(require 'rust)
(require 'q)
(require 'pico)
(require 'autoheader)
(require 'gui)
(provide 'init)
;;; init
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (winum use-package tagedit spaceline-all-the-icons smartparens smart-mode-line-powerline-theme racer powerline-evil paradox nlinum-hl mode-icons magit helm-swoop helm-projectile helm-grepint helm-git-grep flycheck-rust eyebrowse evil-anzu ereader doom-themes deferred company color-theme-sanityinc-tomorrow centered-cursor-mode cedit cargo all-the-icons-dired airline-themes ag)))
 '(paradox-github-token t)
 '(size-indication-mode t)
 '(spaceline-all-the-icons-primary-separator "")
 '(spaceline-all-the-icons-secondary-separator "")
 '(spaceline-all-the-icons-separator-type (quote slant))
 '(spaceline-all-the-icons-separators-invert-direction t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
