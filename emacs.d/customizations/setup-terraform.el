;; terraform
(require 'terraform-mode)
(autoload 'terraform-mode "terraform-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.\\tf\\$"   . terraform-mode))

(custom-set-variables
 '(terraform-indent-level 2))
