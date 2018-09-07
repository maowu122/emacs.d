;;自动补全
(use-package company
  :init
  (add-package 'company)
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (define-key global-map (kbd "C-SPC") nil)
  (define-key global-map (kbd "C-@") nil)
  (define-key company-mode-map "\t" nil)
  (define-key company-mode-map (kbd "C-@") 'company-complete-common)
  (define-key company-mode-map (kbd "C-SPC") 'company-complete-common))

(provide 'init-company)
