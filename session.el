;; Save desktop
;; Remember Emacs session
(setq desktop-path '("~/.emacs.d/"))
(setq desktop-save 'ask-if-new)
(desktop-save-mode t)

; Save cursor position within files
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/.saveplace")

;; Reload files when changed
(global-auto-revert-mode 1)

;; Disable backups
;;(setq backup-inhibited t)


(provide 'session )
