;;按键提醒，当你按一个按键的时候，会弹出之后所有可能的按键以及说明。
(use-package which-key
  :init
  (add-package 'which-key)
  :config
  (which-key-mode 1))

;; 文件历史记录
(use-package recentf
  :init
  (add-package 'recentf)
  :bind
  ("C-x C-r" . recentf-open-files)
  :config
  (recentf-mode 1)
  (setq recentf-max-menu-item 10))

(provide 'init-packages)
