;; Interface

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

(setq inhibit-splash-screen 1)
;; 默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 在标题栏显示buffer的名字
(setq frame-title-format "%b@emacs")
(setq linum-format "%4d ")

(provide 'init-ui)
