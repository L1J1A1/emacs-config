;;; rich-minority-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "rich-minority" "rich-minority.el" (0 0 0 0))
;;; Generated autoloads from rich-minority.el

(autoload 'rm--mode-list-as-string-list "rich-minority" "\
Return `minor-mode-list' as a simple list of strings." nil nil)

(defvar rich-minority-mode nil "\
Non-nil if Rich minority mode is enabled.
See the `rich-minority-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `rich-minority-mode'.")

(custom-autoload 'rich-minority-mode "rich-minority" nil)

(autoload 'rich-minority-mode "rich-minority" "\
Rich minority mode.

If called interactively, enable Rich minority mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rich-minority" '("rm-")))

;;;***

;;;### (autoloads nil nil ("rich-minority-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rich-minority-autoloads.el ends here
