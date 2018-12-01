;;gruvbox 主题
(use-package gruvbox-theme
  :init
  (load-theme 'gruvbox t)
  (setq evil-emacs-state-cursor '("red" box))
  (setq evil-normal-state-cursor '("green" box))
  (setq evil-visual-state-cursor '("orange" box))
  (setq evil-insert-state-cursor '("red" bar))
  (setq evil-replace-state-cursor '("red" bar))
  (setq evil-operator-state-cursor '("red" hollow)))

(provide 'init-gruvbox)
