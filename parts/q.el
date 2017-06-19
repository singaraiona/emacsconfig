;;; q --- Summary
;;; Commentary:
;;; Code:
(autoload 'q-mode "q-mode")
(add-to-list 'auto-mode-alist '("\\.[kq]\\'" . q-mode))
(setq inferior-qcon-program-name "/home/singa/bin/qcon")
(setq q-indent-step 4)
(provide 'q)
;;; q.el ends here
