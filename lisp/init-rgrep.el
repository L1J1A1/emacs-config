;; 设置rgrep高亮匹配项
(setq grep-highlight-matches 'auto)
(setq grep-find-template "find <D> <X> -type f <F> -exec grep --color=always -nH -e <R> {} +")
(setq grep-find-ignore-case t)
;; 控制*grep*缓冲区显示在下方的小窗口
(add-to-list 'display-buffer-alist
             '("\\*grep\\*"
               (display-buffer-below-selected)
               (window-height . 10)))

;; 搜索完成后跳转到*grep*窗口
(defun my-select-grep-window ()
  (when-let* ((grep-buffer (get-buffer "*grep*"))
              (grep-window (get-buffer-window grep-buffer)))
    (select-window grep-window t)))  ;; t表示强制聚焦

(add-hook 'grep-setup-hook 'my-select-grep-window)

;; 定义专用窗口逻辑（动态定位主窗口右侧）
(with-eval-after-load 'grep
  (defun my-grep-ensure-target-window ()
    "获取主窗口右侧的窗口，不存在时创建"
    (let* ((main-window (frame-first-window)) ; 获取第一个窗口（主编辑区）
           (right-window (window-right main-window))) ; 检查右侧窗口
      (or right-window
          (split-window-right main-window)))) ; 不存在时分割

  (defun my-grep-show-in-target-window ()
    "在专用窗口显示搜索结果"
    (let ((target-window (my-grep-ensure-target-window)))
      (select-window target-window)
      (recenter)))

  (defun my-grep-next ()
    (interactive)
    (save-selected-window
      (my-grep-show-in-target-window)
      (next-error 1)))

  (defun my-grep-prev ()
    (interactive)
    (save-selected-window
      (my-grep-show-in-target-window)
      (previous-error 1)))

  ;; 绑定快捷键
  (define-key grep-mode-map (kbd "M-n") 'my-grep-next)
  (define-key grep-mode-map (kbd "M-p") 'my-grep-prev))

(provide 'init-rgrep)
