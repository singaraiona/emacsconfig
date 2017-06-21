;;; init --- Summary
;;; Commentary:
;;; Code:
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(setq load-path (append '("~/.emacs.d/setup") load-path))
(setq load-path (append '("~/.emacs.d/parts") load-path))
(setq load-path (append '("~/.emacs.d/plugins") load-path))
(package-refresh-contents)
(require 'installed)
(unless package-archive-contents
  (package-refresh-contents))
; install required packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
(require 'actions)
(require 'rust)
(require 'q)
(require 'pico)
(require 'autoheader)
(require 'gui)
(require 'fb2-mode)

(provide 'init)
;;; init
