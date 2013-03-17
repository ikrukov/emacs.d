;; Save desktop
;; Remember Emacs session
(setq-default desktop-missing-file-warning nil)
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

(add-to-list 'desktop-locals-to-save 'buffer-file-coding-system)
(add-to-list 'desktop-locals-to-save 'tab-width)

;;(desktop-read)

(provide 'session )
