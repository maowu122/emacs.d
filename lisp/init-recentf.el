;; 文件历史记录
(use-package recentf
:ensure t
  :init
  (recentf-mode 1)
  :bind
  ("C-x C-r" . recentf-open-files)
  :config
  (setq recentf-max-menu-item 10))

(provide 'init-recentf)
