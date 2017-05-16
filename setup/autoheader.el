;;; autoheader --- Summary
;;; Commentary:
;;; Code:
(require 'autoinsert)
(auto-insert-mode)
(setq auto-insert-query nil)

(define-skeleton c-header
                 "C header skeleton"
                 nil
                 "/** " (downcase (format-time-string "%d%m%yaku")) \n
                 " * Anton Kundenko anton@algotradinghub.com" \n
                 " * description: \n"
                 " * " (file-name-nondirectory (buffer-file-name)) \n
                 " */\n")

(define-skeleton rust-header
                 "RUST header skeleton"
                 nil
                 "// " (downcase (format-time-string "%d%b%yaku")) \n
                 "// Anton Kundenko anton@algotradinghub.com\n"
                 "// description: \n"
                 "// " (file-name-nondirectory (buffer-file-name)) \n \n)

(define-auto-insert "\\.\\([Cc]\\|cc\\|cpp\\)\\'" 'c-header)
(define-auto-insert "\\.rs\\'" 'rust-header)

(provide 'autoheader)
;;; autoheader.el ends here
