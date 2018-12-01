;;; init --- init config
;;; Commentary:
;;; Code:
(setq package-archives '(("gnu"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa"        . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("org"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(setq package-enable-at-startup nil)
(package-initialize)

;; 快速打开配置文件
(defun open-init-file()
  "通过<F2>快捷键快速打开配置文件."
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;;记住上一次光标位置
(setq-default save-place t)
(require 'saveplace)
(save-place-mode 1)

;;加载use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; 模块化配置
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-better-defaults)
(require 'init-modeline)

(require 'init-gruvbox)

(require 'init-vim)
(require 'init-recentf)
(require 'init-which-key)

(require 'init-flycheck)
(require 'init-company)
(require 'init-lsp)
(require 'init-rust)
(require 'init-flutter)
(require 'init-python)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (which-key use-package racer meghanada lsp-ui lsp-rust lsp-python jedi-core gruvbox-theme evil company-lsp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)
;;; init.el ends here
