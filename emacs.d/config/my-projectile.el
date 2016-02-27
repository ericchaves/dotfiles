(use-package projectile
  :ensure t
  :diminish projectile-mode
  :init
  (setq projectile-keymap-prefix (kbd "C-c p"))
  :config
  (progn
    (setq projectile-enable-caching t)
    (setq projectile-indexing-method 'alien)
    (add-to-list 'projectile-globally-ignored-files "node-modules")
    (projectile-global-mode)
    (message "projectile loaded")))
 
(use-package helm-projectile
  :ensure t
  :init
  (helm-projectile-on)
  :config
  (progn
    (setq projectile-switch-project-action 'projectile-dired)
    (setq projectile-completion-system 'helm)))

(provide 'my-projectile)
