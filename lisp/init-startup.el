(menu-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode 1)

(setq scroll-margin 1)
(setq scroll-conservatively 100)
(setq scroll-step 1)

(setq inhibit-startup-screen t)
(setq make-backup-files nil)

(electric-pair-mode t)
(show-paren-mode 1)

(provide 'init-startup)
