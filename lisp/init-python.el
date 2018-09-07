(use-package lsp-python
  :ensure t
  :init
  (add-package 'lsp-python)
  :config
  (add-hook 'python-mode-hook #'lsp-python-enable)
  ;; 启用 flycheck
  (add-hook 'python-mode-hook 'flycheck-mode))



(provide 'init-python)
