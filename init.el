(setq package-archives '(("gnu"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa"        . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("org"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(setq package-enable-at-startup nil)
(package-initialize)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;;记住上一次光标位置
(setq-default save-place t)
(require 'saveplace)
(save-place-mode 1)

;;包安装函数
(defun add-package (p)
  (unless (package-installed-p p)
    (unless (assoc package package-archive-contents)
      (package-refresh-content))
    (package-install p)))

;;加载use-package
(add-package 'use-package)
(eval-when-compile (require 'use-package))

;; 模块化配置
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-better-defaults)

(require 'init-gruvbox)

(require 'init-vim)

(require 'init-company)
(require 'init-lsp)
(require 'init-rust)
(require 'init-python)

(require 'init-packages)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)
