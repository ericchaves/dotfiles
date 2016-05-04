(require 'use-package)

(use-package tern :ensure t)
(use-package company-tern
  :ensure t
  :config
  (add-to-list 'company-backends 'company-tern))

(use-package js2-mode  
  :ensure t
  :interpreter "node"
  :init (progn
          (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
          ;; Autocomplete
          (add-hook 'js2-mode-hook 'auto-complete-mode)
          (add-hook 'js2-mode-hook 'skewer-mode)
          ;; React
          (add-hook 'js2-mode-hook 'js2-imenu-extras-setup)
          ;;(add-hook 'js2-mode-hook 'modify-syntax-table-for-jsx)  
          ;; (add-hook 'js2-mode-hook 'ac-js2-mode)
          ;; (setq ac-js2-evaluate-calls t)
          (add-hook 'js2-mode-hook 'tern-mode)
          (add-hook 'js2-mode-hook (lambda () (setq mode-name "JS2")))
          )
  :config (progn
            (define-key js2-mode-map (kbd "M-j") nil)
            (setq-default js2-global-externs '("Buffer" "history" "process" "module" "exports" "require" "jQuery" "$" "_" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON" "describe" "it" "expect" "before" "after"))

            ;; 2 spaces for indent
            (setq-default js2-basic-offset 2)
            (setq-default json-reformat:indent-width 2)
            (setq-default js-indent-level 2)
            (setq-default js2-auto-indent-p t)
            (setq-default js2-enter-indents-newline nil)
            (setq-default js2-indent-on-enter-key nil)

            ;; React
            (require 'js2-imenu-extras)
            (add-to-list 'js2-imenu-available-frameworks 'react)
            (add-to-list 'js2-imenu-enabled-frameworks 'react)
            ;;'(sp-local-pair 'js2-mode "<" ">")

            ;; Rules
            (setq-default js2-show-parse-errors nil)
            (setq-default js2-strict-trailing-comma-warning nil)
            (setq-default js2-strict-missing-semi-warning nil)
            (setq-default js2-missing-semi-one-line-override t)))

(use-package js2-refactor
  :ensure t
  :config (js2r-add-keybindings-with-prefix "C-c C-m"))

(use-package json-mode :ensure t)
(use-package json-reformat :ensure t)
(use-package skewer-mode :ensure t)

(use-package jsx-mode
  :ensure t
  :config (progn
            (setq jsx-indent-level 2)))

(use-package karma  :ensure t )

(provide 'my-js2-mode)
