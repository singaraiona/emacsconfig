;;; gui --- Summary
;;; Commentary:
;;; Code:
(setq default-frame-alist '((font . "M+ 1m-18")))
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)
(set-default 'truncate-lines t)
;; (set-cursor-color "#696969")
;; (require 'nlinum-hl)
;; (setq nlinum-highlight-current-line t)

;; A shotgun approach that refreshes line numbers on a regular basis:
;; Runs occasionally, though unpredictably
;; (add-hook 'post-gc-hook #'nlinum-hl-flush-all-windows)
;; whenever Emacs loses/gains focus
;; (add-hook 'focus-in-hook  #'nlinum-hl-flush-all-windows)
;; (add-hook 'focus-out-hook #'nlinum-hl-flush-all-windows)
;; ...or switches windows
;; (advice-add #'select-window :before #'nlinum-hl-do-select-window-flush)
;; (advice-add #'select-window :after  #'nlinum-hl-do-select-window-flush)
;; after X amount of idle time
;; (run-with-idle-timer 5 t #'nlinum-hl-flush-window)
;; (run-with-idle-timer 30 t #'nlinum-hl-flush-all-windows)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
;; (global-nlinum-mode)
;;
;; (cua-mode t)
;;
(require 'all-the-icons)
(setq spaceline-all-the-icons-slim-render t)
(setq spaceline-all-the-icons-primary-separator "")
(setq spaceline-all-the-icons-secondary-separator "")
(setq spaceline-all-the-icons-separator-type 'slant)
(setq spaceline-all-the-icons-separators-invert-direction t)
(setq spaceline-all-the-icons-file-name-highlight t)
(setq spaceline-all-the-icons-flycheck-alternate t)
(setq spaceline-all-the-icons-highlight-file-name t)
(spaceline-all-the-icons-theme)
(spaceline-toggle-all-the-icons-hud-off)
;; Visual bookmarks
(require 'bm)
(global-set-key (kbd "<C-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)
;;
;; (require 'smooth-scrolling)
;; (smooth-scrolling-mode 1)
;;
(load-theme 'sanityinc-tomorrow-eighties t)
(provide 'gui)
;;; gui.el ends here
