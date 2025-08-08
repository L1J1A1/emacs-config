(setq package-archives
      '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;;个别时候会出现签名检验失败
(setq package-check-signature nil)

;; 初始化软件包管理器
(require 'package)
(unless (bound-and-true-p package--initialized)
    (package-initialize))

;; 刷新软件源索引
(unless package-archive-contents
    (package-refresh-contents))

;; 第一个扩展插件：use-package，用来批量统一管理软件包
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

;; `use-package-always-ensure' 避免每个软件包都需要加 ":ensure t"
;; `use-package-always-defer' 避免每个软件包都需要加 ":defer t"
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-enable-imenu-support t
      use-package-expand-minimally t)

(require 'use-package)

(provide 'init-elpa)
