;; Save desktop
;; Remember Emacs session
(require 'desktop)
(desktop-save-mode t)
(setq history-length 10000)
(setq desktop-path '("~/.emacs.d/"))
(setq desktop-save 'ask-if-new)
(setq-default desktop-missing-file-warning nil)

(add-to-list 'desktop-globals-to-save 'file-name-history)
;;(add-to-list 'desktop-globals-to-save 'ielm-history-size)
;;(add-to-list 'desktop-globals-to-save 'ielm-history)

(add-to-list 'desktop-locals-to-save 'buffer-file-coding-system)
(add-to-list 'desktop-locals-to-save 'tab-width)


; Save cursor position within files
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/.saveplace")

;; Reload files when changed
(global-auto-revert-mode 1)

;;(desktop-read)

(provide 'session )
