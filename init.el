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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#ff9da4" "#d1f1a9" "#ffeead" "#bbdaff" "#ebbbff" "#99ffff" "#003f8e"))
 '(beacon-color "#ff9da4")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(fci-rule-color "#003f8e")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(package-selected-packages
   (quote
    (winum use-package tagedit spaceline-all-the-icons smooth-scrolling smartparens smart-mode-line racer paradox nlinum-hl mode-icons magit lsp-rust helm-swoop helm-projectile helm-grepint helm-git-grep flycheck-rust eyebrowse evil ereader deferred company-lsp color-theme-sanityinc-tomorrow cedit cargo bm anzu all-the-icons-dired ag)))
 '(paradox-github-token t)
 '(spaceline-all-the-icons-separator-type (quote wave))
 '(spaceline-all-the-icons-separators-invert-direction nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
