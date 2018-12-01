;;;  init-rust.el --- Rust config
;;; Commentary:
;;; Code:
(use-package rust-mode
  :ensure t
  :init
  (setq rust-format-on-save t)
  (setq company-tooltip-align-annotations t)
  :config
  (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common))

(use-package flycheck-rust
  :ensure t
  :init
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(use-package lsp-rust
  :ensure t
  :init
  (with-eval-after-load 'lsp-mode
    (setq lsp-rust-rls-command '("rustup" "run" "stable" "rls"))
    (add-hook 'rust-mode-hook #'lsp-rust-enable)))

(use-package racer
  :ensure t
  :init
  (with-eval-after-load 'rust-mode
    (add-hook 'rust-mode-hook #'racer-mode)
    (add-hook 'racer-mode-hook #'company-mode)
    (add-hook 'racer-mode-hook #'eldoc-mode)))

(use-package cargo
  :ensure t
  :init
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(provide 'init-rust)
;;; init-rust.el ends here
