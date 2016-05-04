(require 'use-package)

(use-package jade-mode
  :ensure t
  :mode ("\\.jade$" . jade-mode))

(use-package sws-mode
  :ensure t
  :mode ("\\.styl$" . sws-mode))


(provide 'my-jade-mode)
