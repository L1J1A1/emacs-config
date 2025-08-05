(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(require 'init-startup)
(require 'init-elpa)
(require 'init-org)
(require 'init-packages)
(require 'init-ui)
(require 'init-window)
(require 'init-py)
