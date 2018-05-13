;;; pico --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "/data/work/picoLisp/lib/el")
(require 'picolisp);; Picolisp TransientSymbolsMarkup is automatically loaded
(add-to-list 'auto-mode-alist '("\\.l$" . picolisp-mode))
(add-hook 'picolisp-mode-hook
	  (lambda ()
            (paredit-mode +1) ;; Loads paredit mode automatically
            (tsm-mode) ;; Enables TSM
            (define-key picolisp-mode-map (kbd "RET") 'newline-and-indent)
            (define-key picolisp-mode-map (kbd "C-h") 'paredit-backward-delete)) )

(provide 'pico)
;;; pico.el ends here
