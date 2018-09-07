(use-package lsp-mode
  :ensure t
  :init
  (add-package 'lsp-mode))

(use-package lsp-imenu
  :ensure t
  :init
  ;; 启用 lsp-imenu 集成
  (add-hook 'lsp-after-open-hook 'lsp-enable-imenu))

(use-package lsp-ui
  :ensure t
  :init
  (add-package 'lsp-ui)
  ;; 启用 lsp-ui
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  :config
  (setq
   lsp-ui-sideline-enable nil
   lsp-enable-completion-at-point t
   lsp-ui-doc-position 'at-point
   lsp-ui-doc-header nil
   lsp-ui-doc-include-signature t
   ))

(use-package company-lsp
  :ensure t
  :init
  (add-package 'company-lsp)
  :config
  ;; 设置 company-lsp 为后端
  (push 'company-lsp company-backends))

(provide 'init-lsp)
