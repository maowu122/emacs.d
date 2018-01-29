;; Interface

;; theme
(load-theme 'gruvbox t)
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(defun set-font(en-font zh-font size)
  (interactive)
  (set-face-attribute 'default nil :family en-font)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font "fontset-default" charset (font-spec :family zh-font)))
  (set-face-attribute 'default nil :height (* 10 size)))

(setq my/font-size 12)
(setq my/en-font "Monospace")
(setq my/zh-font "Noto Sans CJK SC")

;; 应用字体设置
(set-font my/en-font my/zh-font my/font-size)
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (select-frame frame)
            (set-font my/en-font my/zh-font my/font-size)))

;; 鼠标滚轮缩放字体大小
(global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)
(global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)


(setq inhibit-splash-screen 1)
;; 默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 在标题栏显示buffer的名字
(setq frame-title-format "%b@emacs")
(setq linum-format "%4d ")

;;显示匹配括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;; 高亮当前行
(global-hl-line-mode 1)

(provide 'init-ui)
