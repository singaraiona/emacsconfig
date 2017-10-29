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

;; enable incremental mode
(setenv "CARGO_INCREMENTAL" "1")

;; Reduce the time after which the company auto completion popup opens
(setq company-idle-delay 0.5)
;; Reduce the number of characters before company kicks in
(setq company-minimum-prefix-length 3)

(require 'flycheck-rust)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(setq rust-format-on-save t)
(setq racer-rust-src-path "~/rust/src")
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(with-eval-after-load 'lsp-mode
  (setq lsp-rust-rls-command '("rustup" "run" "nightly" "rls"))
  (require 'lsp-flycheck)
  (require 'lsp-rust))

(require 'lsp-mode)

(add-hook 'prog-major-mode #'lsp-mode)
(add-hook 'rust-mode-hook #'lsp-rust-enable)
(add-hook 'rust-mode-hook #'flycheck-mode)
(add-hook 'rust-mode-hook #'nlinum-mode)

(provide 'rust)
;;; rust.el ends here
