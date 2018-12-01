;;; company --- 自动补全
;;; Commentary:
;;; Code:
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (define-key global-map (kbd "C-SPC") nil)
  (define-key global-map (kbd "C-@") nil)
  (define-key company-mode-map "\t" nil)
  (define-key company-mode-map (kbd "C-@") 'company-complete-common)
  (define-key company-mode-map (kbd "C-SPC") 'company-complete-common))

(provide 'init-company)
;;; init-company.el ends here
