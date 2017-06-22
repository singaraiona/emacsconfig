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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (smooth-scrolling bm winum use-package tagedit spaceline-all-the-icons smartparens smart-mode-line racer paradox nlinum-hl mode-icons magit helm-swoop helm-projectile helm-grepint helm-git-grep flycheck-rust eyebrowse evil ereader doom-themes deferred company color-theme-sanityinc-tomorrow centered-cursor-mode cedit cargo anzu all-the-icons-dired ag)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; install packages from selected list (if not installed)
(package-refresh-contents)
; install required packages
(dolist (package package-selected-packages)
  (unless (package-installed-p package)
    (package-install package)))

(require 'actions)
(require 'rust)
(require 'q)
(require 'autoheader)
(require 'gui)
(require 'fb2-mode)



(provide 'init)
;;; init
