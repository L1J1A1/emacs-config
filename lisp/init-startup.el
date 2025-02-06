(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

(setq display-line-numbers-type 'relative)
(setq inhibit-startup-screen t)
(setq make-backup-files nil)

(electric-pair-mode t)
(show-paren-mode 1)

(setq c-basic-offset 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(if (display-graphic-p)
    (set-face-attribute 'default nil :height 180)
  (set-face-attribute 'default nil :height 100))

(provide 'init-startup)
