(provide 'gui)
(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode 1)
(scroll-bar-mode -1)

(require 'all-the-icons)
(load-theme 'sanityinc-tomorrow-eighties t)
(require 'powerline)
(powerline-default-theme)
;;(require 'spaceline-all-the-icons)
;;(spaceline-all-the-icons-theme)
;;(spaceline-toggle-all-the-icons-projectile-off)
;;(spaceline-toggle-all-the-icons-hud-off)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(custom-safe-themes
     (quote
       ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
  '(package-selected-packages
     (quote
       (nlinum helm winum persp-mode eyebrowse ## flycheck-rust flycheck racer powerline company all-the-icons)))
  '(powerline-default-separator (quote contour)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(default ((t (:family "Liberation Mono" :foundry "1ASC" :slant normal :weight normal :height 143 :width normal)))))

