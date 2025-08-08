(use-package gruvbox-theme
  :init (load-theme 'tango-dark t))

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
        sml/theme 'automatic)
  (sml/setup))

(provide 'init-ui)
