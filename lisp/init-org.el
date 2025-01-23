(setq org-log-done 'time)
(setq org-agenda-start-on-weekday 0)
(setq org-ellipsis "⤵")

(use-package org-bullets
  :ensure t
  :hook (org-mode . org-bullets-mode))

(provide 'init-org)
