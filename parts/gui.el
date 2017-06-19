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
(set-cursor-color "#696969")
(require 'nlinum-hl)
(setq nlinum-highlight-current-line t)

;; A shotgun approach that refreshes line numbers on a regular basis:
;; Runs occasionally, though unpredictably
(add-hook 'post-gc-hook #'nlinum-hl-flush-all-windows)
;; whenever Emacs loses/gains focus
(add-hook 'focus-in-hook  #'nlinum-hl-flush-all-windows)
(add-hook 'focus-out-hook #'nlinum-hl-flush-all-windows)
;; ...or switches windows
(advice-add #'select-window :before #'nlinum-hl-do-select-window-flush)
(advice-add #'select-window :after  #'nlinum-hl-do-select-window-flush)
;; after X amount of idle time
(run-with-idle-timer 5 t #'nlinum-hl-flush-window)
(run-with-idle-timer 30 t #'nlinum-hl-flush-all-windows)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
(global-nlinum-mode)
;;
(load-theme 'sanityinc-tomorrow-eighties t)
;;
(require 'all-the-icons)
(spaceline-all-the-icons-theme)
(setq spaceline-all-the-icons-slim-render t)
(spaceline-toggle-all-the-icons-hud-off)
(setq spaceline-all-the-icons-primary-separator "")
(setq spaceline-all-the-icons-secondary-separator "")
(setq spaceline-all-the-icons-separator-type 'slant)
(setq spaceline-all-the-icons-separators-invert-direction t)

(provide 'gui)
;;; gui.el ends here
