(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

(setq display-line-numbers-type 'relative)
(setq inhibit-startup-screen t)
(setq make-backup-files nil)

(electric-pair-mode t)
(add-hook 'prog-mode-hook #'show-paren-mode)
(add-hook 'prog-mode-hook #'hs-minor-mode)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(provide 'init-startup)
