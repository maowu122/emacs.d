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
(define-key evil-normal-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)

;; Leader key
(setq evil-leader/in-all-states 1)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
;(evil-leader/set-key
;  "ff" 'find-file
;  "bb" 'switch-to-buffer
;  "0"  'select-window-0
;  "1"  'select-window-1
;  "2"  'select-window-2
;  "3"  'select-window-3
;  "w/" 'split-window-right
;  "w-" 'split-window-below
;  ":"  'counsel-M-x
;  "wM" 'delete-other-windows
;  )

(provide 'init-vim)
