;;; Code:
(require 'package)
(package-initialize)
(require 'all-the-icons)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(setq load-path (append '("/home/singa/.emacs.d/plugins") load-path))

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

(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode 1)
(scroll-bar-mode -1)

(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(autoload 'q-mode "q-mode")
(add-to-list 'auto-mode-alist '("\\.[kq]\\'" . q-mode))
(setq inferior-qcon-program-name "/home/singa/bin/qcon")
(setq q-indent-step 4)
;;window movement
(windmove-default-keybindings)
(setq rust-format-on-save t)

(require 'flycheck-rust)
(global-flycheck-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'after-init-hook #'global-flycheck-mode)
;;garbage collection timeout
(setq gc-cons-threshold (* gc-cons-threshold 100))
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'helm-config)
(helm-mode 1)
(require 'helm-swoop)
(defmethod helm-setup-user-source ((source helm-source-multi-occur))
  (setf (slot-value source 'follow) 1))

(require 'helm-grepint)
(helm-grepint-set-default-config)
(global-set-key (kbd "C-c g") #'helm-grepint-grep)

(require 'helm-git-grep) ;; Not necessary if installed by package.el

;; Invoke `helm-git-grep' from other helm.
(eval-after-load 'helm
                 '(define-key helm-map (kbd "C-c g") 'helm-git-grep-from-helm))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-s o") 'helm-occur)

(require 'helm-files)
;;(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-f") 'helm-for-files)
(setq helm-ff-guess-ffap-filenames t)
(setq helm-ff-guess-ffap-urls t)

;; helm + projectile
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(setq helm-for-files-preferred-list '(
                                      helm-source-projectile-files-list
                                      helm-source-projectile-recentf-list
                                      helm-source-buffers-list
                                      helm-source-recentf
                                      helm-source-projectile-directories-list
                                      helm-source-projectile-projects
                                      ;; helm-source-bookmarks
                                      ;; helm-source-file-cache
                                      helm-source-files-in-current-dir
                                      helm-source-moccur
                                      helm-source-locate
                                      ))
(setq term-term-name "eterm-color")
(blink-cursor-mode)
