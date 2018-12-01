;;; init-flutter -- init flutter
;;; Commentary:
;;; Code:
(use-package dart-mode
  :ensure t
  :init
  (setq dart-sdk-path "/home/mrcat/.local/opt/flutter/bin/cache/dart-sdk/")
  (setq dart-enable-analysis-server t)
  (add-hook 'dart-mode-hook 'flycheck-mode))



(provide 'init-flutter)
;;; init-flutter.el ends here
