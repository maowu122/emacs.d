;;; init-modeline.el --- Mode Line Config
;;; Commentary:
;;; Code:
(column-number-mode 1)

(setq mode-line-position
      '(line-number-mode ("%l" (column-number-mode ":%c"))))

(require 'evil)
(setq evil-normal-state-tag   (propertize "[N]" 'face '(:background "DarkGoldenrod2" :foreground "black"))
      evil-insert-state-tag   (propertize "[I]" 'face '(:background "chartreuse3" :foreground "white"))
      evil-emacs-state-tag    (propertize "[E]" 'face '(:background "SkyBlue2" :foreground "black"))
      evil-motion-state-tag   (propertize "[M]" 'face '(:background "plum3" :foreground "white"))
      evil-visual-state-tag   (propertize "[V]" 'face '(:background "gray" :foreground "black"))
      evil-operator-state-tag (propertize "[O]" 'face '(:background "purple")))

(provide 'init-modeline)
;;; init-modeline.el ends here
