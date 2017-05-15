;;; actions --- Summary
;;; Commentary:
;;; Code:
;;window movement
(windmove-default-keybindings)

(global-flycheck-mode)

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
(defun my-projectile-clear-cache (candicate)
  (projectile-invalidate-cache nil))
(helm-projectile-define-key helm-projectile-find-file-map
                            (kbd "C-c u") #'my-projectile-clear-cache)
(require 'misc)
(global-set-key "\M-f" 'forward-to-word)
(global-set-key (kbd "C-x w") 'elfeed)
(global-set-key (kbd "C-x g") 'magit-status)
(provide 'actions)
;;; actions.el ends here
