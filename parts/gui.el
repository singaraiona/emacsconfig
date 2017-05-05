;;; gui --- Summary
;;; Commentary:
;;; Code:
(setq default-frame-alist '((font . "Liberation Mono-14")))
(set-frame-font "Liberation Mono-14")
(require 'centered-cursor-mode)
(global-centered-cursor-mode +1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)

(require 'all-the-icons)
(load-theme 'sanityinc-tomorrow-eighties t)
(require 'spaceline-all-the-icons)
(spaceline-all-the-icons-theme)
(spaceline-toggle-all-the-icons-hud-off)
(setq spaceline-all-the-icons-flycheck-alternate t)
(setq spaceline-all-the-icons-hide-long-buffer-path t)
(setq spaceline-all-the-icons-separator-type 'cup)
(setq spaceline-all-the-icons-slim-render t)
(provide 'gui)
;;; gui.el ends here
