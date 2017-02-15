;; set username
(setq user-full-name "Eric Chaves"
      user-mail-address "eric@craftti.com.br")
;; encoding - Set preferred encoding system as UTF-8
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; remap common keys
(global-set-key (kbd "C-z") 'undo)
;; General Auto-Complete
(require 'auto-complete-config)
(setq ac-delay 0.0)
(setq ac-quick-help-delay 0.5)
(ac-config-default)


;; enable copy to clipboardg
(setq x-select-enable-clipboard t)
(setq mouse-drag-copy-region t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
