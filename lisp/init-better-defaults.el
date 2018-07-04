;;禁止菜单栏
(menu-bar-mode -1)
;;禁止显示工具栏
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;禁止显示滚动条
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;;禁止emacs一个劲的叫
(setq visible-bell t);
;;在console，不想看到屏幕不停的闪
(setq ring-bell-function (lambda () t))
;;关闭启动是的那个“开机画面”
(setq inhibit-startup-message t)
;;设置剪切板最大条目数为200
(setq kill-ring-max 200)
;;一行显示最多显示80列
(setq default-fill-column 80)
;;缺省的major-mode为text-mode
(setq default-major-mode 'text-mode)
;;括号匹配时显示另外一边的括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;显示语法高亮
(global-font-lock-mode t)
;;显示行号
(global-linum-mode t)
;; 高亮当前行
(global-hl-line-mode 1)
;;设置编码
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-16-le)
(set-default-coding-systems 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)  
(set-file-name-coding-system 'gb18030)
;;内部有个自动补全功能，根据当前buffer的内容、文件名、剪切板等自动补全
(setq hippie-expand-try-functions-list
      '(
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))
;;按ALT+/ 键进行补全
(global-set-key (kbd "M-/") 'hippie-expand)
;;用ibuffer替换默认的buffer管理器
(global-set-key (kbd "C-x C-b") 'ibuffer)
;;用正则搜索替换默认搜索
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
;;一个好用的minibuffer插件ido，许多插件都基于它。
(ido-mode t)
(setq ido-enable-flex-matching t)
;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)
;; 关闭备份文件
(setq make-backup-files nil)
;; 关闭自动保存文件
(setq auto-save-default nil)
;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)
;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; 替换选中的文字
(delete-selection-mode 1)
;; 换行自动缩进
(define-key global-map (kbd "RET") 'newline-and-indent)

(provide 'init-better-defaults)
