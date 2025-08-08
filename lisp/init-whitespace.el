(defun disable-tabs ()
  (setq indent-tabs-mode nil))

(defun enable-tabs ()
  (setq indent-tabs-mode t)
  (setq tab-width 4))

(add-hook 'prog-mode-hook 'disable-tabs)
(add-hook 'lisp-mode-hook 'disable-tabs)
(add-hook 'emacs-lisp-mode-hook 'disable-tabs)

(setq c-basic-offset 4)
(setq-default python-indent-offset 4)

(setq backward-delete-char-untabify-method 'nil)

(global-whitespace-mode)
(setq whitespace-style '(face tabs tab-mark trailing))
(custom-set-faces
 '(whitespace-tab ((t (:foreground "#636363")))))

(setq whitespace-display-mappings
      '((tab-mark 9 [124 9] [92 9])))

(provide 'init-whitespace)
