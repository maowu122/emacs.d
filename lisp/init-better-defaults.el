;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)
;; 关闭备份文件
(setq make-backup-files nil)
;; 关闭自动保存文件
(setq auto-save-default nil)
;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)
;; 关闭出错提示声
(setq visible-bell t)
;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; 替换选中的文字
(delete-selection-mode 1)
;; 换行自动缩进
(define-key global-map (kbd "RET") 'newline-and-indent)
;; 文件历史记录
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; 格式化文本
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))
(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
      (progn
        (indent-region (region-beginning) (region-end))
        (message "Indent selected region."))
      (progn
        (indent-buffer)
        (message "Indent buffer.")))))
(global-set-key (kbd "C-M-L") 'indent-region-or-buffer)

(provide 'init-better-defaults)
