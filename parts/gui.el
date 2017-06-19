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
(set-default 'truncate-lines t)
(use-package spaceline-all-the-icons
  :after spaceline
  :config (spaceline-all-the-icons-theme))
;; (require 'all-the-icons)
;; (load-theme 'sanityinc-tomorrow-eighties t)
;; (spaceline-all-the-icons-theme)
;; (require 'diminish)
;; (spaceline-all-the-icons-theme)
;; (spaceline-toggle-all-the-icons-hud-off)
;; (setq spaceline-all-the-icons-flycheck-alternate t)
;; (setq spaceline-all-the-icons-hide-long-buffer-path t)
;; (setq spaceline-all-the-icons-separator-type 'cup)
;; (setq spaceline-all-the-icons-slim-render t)
;; (set-cursor-color "#696969")
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
(provide 'gui)
;;; gui.el ends here
