(require 'use-package)
(use-package web-mode
  :ensure t
  :mode
  ("\\.html?\\'"      . web-mode)
  ("\\.jsx?\\'"       . web-mode)
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-enable-auto-quoting nil)
  (setq web-mode-content-types-alist
        '(("jsx" . "\\.jsx\\'"))))
      
(provide 'my-web-mode)
