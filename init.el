;;; Code:
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(setq load-path (append '("~/.emacs.d/setup") load-path))
(setq load-path (append '("~/.emacs.d/parts") load-path))
(setq load-path (append '("~/.emacs.d/plugins") load-path))

(require 'gui)
(require 'actions)
(require 'rust)
(require 'q)
(require 'sources)
(require 'autoheader)
