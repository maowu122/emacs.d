;; Rust
(use-package rust-mode
  :init
  (add-package 'rust-mode)
  :config
  (setq rust-format-on-save t))

(provide 'init-rust)
