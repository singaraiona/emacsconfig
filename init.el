;;; Code:
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(setq load-path (append '("~/.emacs.d/parts") load-path))
(setq load-path (append '("~/.emacs.d/plugins") load-path))

(require 'gui)
(require 'actions)
(require 'rust)
(require 'q)
(require 'sources)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(package-selected-packages
     (quote
       (winum spaceline-all-the-icons racer persp-mode nlinum mode-icons magit helm-swoop helm-projectile helm-grepint helm-git-grep flycheck-rust eyebrowse elfeed-org elfeed-goodies company color-theme-sanityinc-tomorrow centered-cursor-mode cargo))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  )
