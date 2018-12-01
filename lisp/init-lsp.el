;;; lsp-mode.el --- LSP Config
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :ensure t)

;;(use-package lsp-imenu
;;  :init
  ;; 启用 lsp-imenu 集成
;;  (add-hook 'lsp-after-open-hook 'lsp-enable-imenu))

;;(use-package lsp-ui
;;  :ensure t
;;  :disabled t
;;  :init
  ;; 启用 lsp-ui
;;  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
;;  :config
;;  (setq
;;   lsp-ui-sideline-enable nil
;;   lsp-enable-completion-at-point t
;;   lsp-ui-doc-position 'at-point
;;   lsp-ui-doc-header nil
;;   lsp-ui-doc-include-signature t))

(use-package company-lsp
  :ensure t
  :init
  (require 'company)
  :config
  ;; 设置 company-lsp 为后端
  (push 'company-lsp company-backends))

(provide 'init-lsp)
;;; init-lsp.el ends here
