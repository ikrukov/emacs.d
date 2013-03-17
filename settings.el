
(setq compilation-read-command nil)
(setq compilation-ask-about-save nil)

(require 'ido)
(ido-mode t )

;; tramp ( Transparent Remote Access Mode )
(setq tramp-default-method "ssh")

;; Adds a new line at the last line
(setq require-final-newline t)

;; Tags filename
(setq tags-file-name "TAGS")

;; Use system clipboard for copy/paste
(setq x-select-enable-clipboard -1)

;; Tab either indents or complete
(setq tab-always-indent 'complete)


(provide 'settings)
