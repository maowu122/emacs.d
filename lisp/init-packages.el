(defun add-package (p)
  (unless (package-installed-p p)
    (package-refresh-contents)
    (package-install p)))

;;自动安装use-package
(add-package 'use-package)
;;加载use-package
(eval-when-compile (require 'use-package))

(use-package better-defaults
  :init (add-package 'better-defaults))

;;gruvbox 主题
(use-package gruvbox-theme
  :init (add-package 'gruvbox-theme)
  :config
  (load-theme 'gruvbox t)
  (setq evil-emacs-state-cursor '("red" box))
  (setq evil-normal-state-cursor '("green" box))
  (setq evil-visual-state-cursor '("orange" box))
  (setq evil-insert-state-cursor '("red" bar))
  (setq evil-replace-state-cursor '("red" bar))
  (setq evil-operator-state-cursor '("red" hollow)))

;;VIM 模式
(use-package evil
  :init (add-package 'evil)
  :config
  (evil-mode 1)
  ;; remove default evil-toggle-key C-z, manually setup later
  (setq evil-toggle-key "")
  ;; don't bind [tab] to evil-jump-forward
  (setq evil-want-C-i-jump nil)
  ;; remove all keybindings from insert-state keymap, use emacs-state when editing
  (setcdr evil-insert-state-map nil)
  ;; ESC to switch back normal-state
  (define-key evil-insert-state-map [escape] 'evil-normal-state)
  ;; Use j/k to move one visual line insted of gj/gk
  (define-key evil-normal-state-map (kbd "<remap> <evil-next-line>")     'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
  (define-key evil-motion-state-map (kbd "<remap> <evil-next-line>")     'evil-next-visual-line)
  (define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line))

;;按键提醒，当你按一个按键的时候，会弹出之后所有可能的按键以及说明。
(use-package which-key
  :init (add-package 'which-key)
  :config (which-key-mode 1))

;; 文件历史记录
(use-package recentf
  :init (add-package 'recentf)
  :bind ("C-x C-r" . recentf-open-files)
  :config
  (recentf-mode 1)
  (setq recentf-max-menu-item 10))

;;Java dev
(use-package meghanada
  :defer t
  :init (add-package 'meghanada)
  (add-hook 'java-mode-hook
            (lambda ()
              ;; meghanada-mode on
              (meghanada-mode t)
              (flycheck-mode +1)
              (setq c-basic-offset 2)
              ;; use code format
              (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))
  :config
  (cond
   ((eq system-type 'windows-nt)
    (setq meghanada-java-path (expand-file-name "bin/java.exe" (getenv "JAVA_HOME")))
    (setq meghanada-maven-path "mvn.cmd"))
   (t
    (setq meghanada-java-path "java")
    (setq meghanada-maven-path "mvn"))))

(use-package company
  :init (add-package 'company)
  :config (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-packages)
