;; javascript / html
(require 'js2-mode)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.\\js\\$"   . js2-mode))
(add-to-list 'auto-mode-alist '("\\.\\json\\$" . json-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'"    . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node"  . js2-jsx-mode))


(setq-default js2-global-externs '("process"  "module" "exports" "require" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console \"JSON\"" "Buffer" "describe" "it" "before" "after" "afterEach" "beforeEach" "expect" "request"))
(setq js2-strict-missing-semi-warning nil)
(setq js2-missing-semi-one-line-override nil)
(setq-default js2-strict-trailing-comma-warning nil)
(setq js2-basic-offset 2)
(setq js-indent-level 2)

(require 'js2-refactor)
(js2r-add-keybindings-with-prefix "C-c C-m")

(require 'js2-imenu-extras)
(js2-imenu-extras-setup)


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.dotjs\\.dot\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jade\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(require 'cloudformation-mode)
(add-to-list 'auto-mode-alist '("\\.cfn\\'" . cloudformation-mode))
(add-to-list 'auto-mode-alist '("\\.template\\'" . cloudformation-mode))
(setenv "PATH" (concat (getenv "PATH") ":/home/eric/.nvm/versions/node/v5.6.0/bin"))
(setq exec-path (append exec-path '("/home/eric/.nvm/versions/node/v5.6.0/bin")))
(require 'flymake-json)
(global-set-key (kbd "C-c j v") 'flymake-json-load)
