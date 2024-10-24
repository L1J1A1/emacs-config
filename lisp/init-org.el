(setq org-log-done 'time)
(setq org-agenda-start-on-weekday 0)

(add-hook 'org-mode-hook
          (lambda ()
            (org-bullets-mode t)))
(setq org-ellipsis "⤵")

(provide 'init-org)
