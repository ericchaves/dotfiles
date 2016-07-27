;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.


;; "When several buffers visit identically-named files,
;; Emacs must give the buffers distinct names. The usual method
;; for making buffer names unique adds ‘<2>’, ‘<3>’, etc. to the end
;; of the buffer names (all but one of them).
;; The forward naming method includes part of the file's directory
;; name at the beginning of the buffer name
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Uniquify.html
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Turn on recent file mode so that you can more easily switch to
;; recently edited files when you first start emacs
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 40)

;;helm mde uses fuzzy search to navigate choices.
(require 'helm-config)
;;(require 'helm)
(helm-mode 1)
(setq helm-candidate-number-limit 100) ;; From https://gist.github.com/antifuchs/9238468
(setq helm-idle-delay 0.0              ; update fast sources immediately (doesn't).
      helm-input-idle-delay 0.01       ; this actually updates thing reeeelatively quickly.
      helm-yas-display-key-on-candidate t
      helm-quick-update t
      helm-M-x-requires-pattern nil
      helm-ff-skip-boring-files t)


(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-h a") 'helm-apropos)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x c o") 'helm-occur)
(global-set-key (kbd "C-x c s") 'helm-swoop)
(global-set-key (kbd "C-x c y") 'helm-yas-complete)
(global-set-key (kbd "C-x c Y") 'helm-yas-create-snippet-on-region)
(global-set-key (kbd "C-x c b") 'my/helm-do-grep-book-notes)
(global-set-key (kbd "C-x c SPC") 'helm-all-mark-rings)

;; Enhances M-x to allow easier execution of commands. Provides
;; a filterable list of possible commands in the minibuffer
;; http://www.emacswiki.org/emacs/Smex
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; projectile everywhere!
(require 'helm-projectile)
(helm-projectile-on)
(projectile-global-mode)
(setq projectile-keymap-prefix (kbd "C-c p"))
;(setq projectile-enable-caching t)
;(setq projectile-indexing-method 'alien)
(add-to-list 'projectile-globally-ignored-files "node-modules")
;(setq projectile-switch-project-action 'projectile-dired)
(setq projectile-switch-project-action 'helm-projectile-find-file)
(setq projectile-switch-project-action 'helm-projectile)
(setq projectile-completion-system 'helm)
;; move-text
;(require 'move-text)
;(global-set-key [M-up] 'move-text-up)
;(global-set-key [M-down] 'move-text-down)
;TODO: find unbinded key. M-up/down in use by paredit

;; Enable minor hide-show minor mode globally
(add-hook 'prog-mode-hook #'hs-minor-mode)
(setq-default hs-minor-mode t)
(global-set-key (kbd "C-=") #'hs-toggle-hiding)
(global-set-key (kbd "C-+") #'hs-show-all)
(global-set-key (kbd "C-_") #'hs-hide-all)

        (define-key map (kbd "C-c @ S")	  'hs-show-all)
        (define-key map (kbd "C-c @ l")   'hs-hide-level)
