;; setup load-path and autoloads
(add-to-list 'load-path "~/.emacs.d/slime")
(require 'slime-autoloads)

;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "~/local/sbcl/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(provide 'slime-settings)
