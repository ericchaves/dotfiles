;;; init.el --- Where all the magic begins

(require 'cl)

(setq user-full-name "Eric Chaves"
      user-mail-address "eric@craftti.com.br")
;; encoding - Set preferred encoding system as UTF-8
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; some custom preferences
;(setq debug-on-error t)
(setq inhibit-startup-screen t)
(setq vc-follow-symlinks t)
;; copy and paste
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary t)
(setq mouse-drag-copy-region t)
;; set font size in 1/100 (ie 100 = 10pts) and enable zooming
(set-face-attribute 'default nil :height 90)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-=") 'text-scale-adjust)
;; flahs bell
(setq visible-bell 1)

;; set paths and backups
;; config dir holds all my-<package>.el files
(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

(require 'package)
(add-to-list 'package-archives '("marmelade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
;(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))


(package-initialize)
(setq url-http-attempt-keepalives nil)


;; define list of packages to load.
;; will try to require setup-<package> otherwise will just install/require <package>
;; by convention setup-<package>.el will ensure package is installed using use-package
(let ((need-refresh nil))
  (dolist (pkg '(use-package
                  smartparens
                  yasnippet
                  move-text
                  better-defaults
                  fontawesome
                  zenburn-theme
                  rainbow-delimiters
                  helm
                  guide-key
                  projectile
                  company
                  markdown-mode
                  web-mode
                  js2-mode
                  magit))
    (unless (require (intern (concat "my-" (symbol-name pkg))) nil 'noerror)
      (message "my-%s not found" pkg)
      (unless (package-installed-p pkg)
        (message "installing %s" pkg)
        (unless need-refresh
          (package-refresh-contents)
          (set 'need-refresh t))
        (package-install pkg))
      (require pkg))))


