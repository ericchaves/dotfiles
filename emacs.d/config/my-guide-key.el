(use-package guide-key
             :ensure t
             :init
             (setq guide-key/guide-key-sequence '("C-x r"
                                                  "C-c p"
                                                  "C-x 4"))
             (setq guide-key/guide-key-sequence t)
             (setq guide-key/idle-delay 0.5)
             (guide-key-mode 1))
(provide 'my-guide-key)
