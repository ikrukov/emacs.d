
(add-to-list 'custom-theme-load-path   "~/.emacs.d/themes/emacs-color-theme-solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/zenburn-emacs")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/zen-and-art")

;;https://github.com/altercation/solarized
(load-theme 'solarized-light t)
;;(load-theme 'solarized-dark t)

;;https://github.com/bbatsov/zenburn-emacs
;;(load-theme 'zenburn t)


;;https://github.com/irfn/zen-and-art
;;(load-file "~/.emacs.d/themes/zen-and-art/zen-and-art.el")
;;(color-theme-zen-and-art)
;;(load-theme 'zen-and-art t)


(provide 'theme)
