(use-package company
  :ensure t
  :bind
  ("C-o" . company-complete)
  :config
  ;(global-set-key (kbd "<f1>") 'company-complete)
  (add-hook 'prog-mode-hook 'company-mode))

(provide 'my-company)
