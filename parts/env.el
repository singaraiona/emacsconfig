;;; env --- Summary
;;; Commentary:
;;; Code:
;;(setq elfeed-feeds
;;      '("https://news.ycombinator.com/rss"
;;        "https://www.obozrevatel.com/rss"
;;        "https://www.theguardian.com/world/rss"
;;        "http://rss.slashdot.org/Slashdot/slashdotMain"))
;; use an org file to organise feeds
(require 'elfeed-org)
(elfeed-org)
(setq rmh-elfeed-org-files (list "~/.emacs.d/org/elfeed.org"))
(provide 'env)
;;; env.el ends here
