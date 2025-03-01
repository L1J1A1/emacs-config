(menu-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode 1)

(setq display-line-numbers-type 'relative)
(setq inhibit-startup-screen t)
(setq make-backup-files nil)

(electric-pair-mode t)
(show-paren-mode 1)

(setq c-basic-offset 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(global-set-key (kbd "C-c s") 'rgrep)

(if (display-graphic-p)
    (set-face-attribute 'default nil :height 120)
  (set-face-attribute 'default nil :height 100))

(if (not (eq window-system nil))
    (progn
      ;; top, left ... must be integer
      (add-to-list 'default-frame-alist
                   (cons 'top  (/ (x-display-pixel-height) 10)))
      (add-to-list 'default-frame-alist
                   (cons 'left (/ (x-display-pixel-width) 10)))
      (add-to-list 'default-frame-alist
                   (cons 'height (/ (* 4 (x-display-pixel-height))
                                    (* 5 (frame-char-height)))))
      (add-to-list 'default-frame-alist
                   (cons 'width (/ (* 4 (x-display-pixel-width))
                                   (* 5 (frame-char-width)))))))

(provide 'init-startup)
