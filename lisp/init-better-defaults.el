;;; init-better-defaults.el --- Emacs界面增强设置
;;; Commentary:
;;; Code:

;;禁止菜单栏
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;;禁止显示工具栏
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;禁止显示滚动条
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;;关闭启动是的那个“开机画面”
(setq inhibit-startup-message t)
;;关闭烦人的出错时的提示声
(setq visible-bell t);
(setq ring-bell-function 'ignore)

;;标题显示文件名
(setq frame-title-format "%b  [%I] %f  GNU/Emacs" )
;;关闭scratch消息提示
(setq  initial-scratch-message nil)
;;显示行号
(global-linum-mode t)
;; 高亮当前行
(global-hl-line-mode 1)
;;显示语法高亮
(global-font-lock-mode t)
;;一行显示最多显示80列
;;(setq default-fill-column 80)
;; 关闭自动换行
;;(set-default 'truncate-lines t)
;;输入括号时 自动添加半边括号
(electric-pair-mode t)
;;括号匹配时显示另外一边的括号
(show-paren-mode t)
;;(setq show-paren-style 'parentheses)

;;用空格代替tab来进行代码的缩进
(setq-default indent-tabs-mode nil)
;;缺省的major-mode为text-mode
;;(setq default-major-mode 'text-mode)
;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)
;; 关闭备份文件
(setq make-backup-files nil)
;; 关闭自动保存文件
(setq auto-save-default nil)
;; 支持emacs和外部程序的粘贴
;;(setq x-select-enable-clipboard t)
;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; 替换选中的文字
(delete-selection-mode 1)
;; 换行自动缩进
(define-key global-map (kbd "RET") 'newline-and-indent)

;;一个好用的minibuffer插件ido，许多插件都基于它。
;;(ido-mode t)
;;(setq ido-enable-flex-matching t)
;;用ibuffer替换默认的buffer管理器
;;(global-set-key (kbd "C-x C-b") 'ibuffer)
;;用正则搜索替换默认搜索
;;(global-set-key (kbd "C-s") 'isearch-forward-regexp)
;;(global-set-key (kbd "C-r") 'isearch-backward-regexp)

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

(provide 'init-better-defaults)
;;; init-better-defaults.el ends here
