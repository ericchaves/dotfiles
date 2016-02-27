(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "C-x g") 'magit-status)
)

(use-package magit-gitflow
  :ensure t
  :config
  (add-hook 'magit-mode-hook 'turn-on-magit-gitflow))

(provide 'my-magit)
