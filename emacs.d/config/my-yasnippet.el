(require 'use-package)
(use-package yasnippet
  :ensure t
  :config (progn 
            (add-to-list 'yas-snippet-dirs (expand-file-name "~/.emacs.d/yasnippets"))
            (add-to-list 'yas-snippet-dirs (expand-file-name "~/.emacs.d/snippets"))
            (yas-global-mode)))
(provide 'my-yasnippet)
