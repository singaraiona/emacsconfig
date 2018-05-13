;;; gui --- Summary
;;; Commentary:
;;; Code:
(setq default-frame-alist '((font . "M+ 1m-18")))
;;(set-face-attribute 'mode-line nil :font "M+ 1m-18")
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)
(set-default 'truncate-lines t)
(require 'all-the-icons)
;; Visual bookmarks
(require 'bm)
(global-set-key (kbd "<C-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)
;;
(require 'smooth-scrolling)
(smooth-scrolling-mode 1)
;;
(load-theme 'sanityinc-tomorrow-eighties t)
;;
(require 'spaceline-config)
(provide 'gui)
;;; gui.el ends here
