;;; rust --- Summary
;;; Commentary:
;;; Code:
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(require 'flycheck-rust)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(setq rust-format-on-save t)
(setq racer-rust-src-path "~/rust/src")
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(provide 'rust)
;;; rust.el ends here
