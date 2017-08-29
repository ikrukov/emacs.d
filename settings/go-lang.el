
;; gocode / go-autocomplete
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)


;; el-doc
(add-hook 'go-mode-hook 'go-eldoc-setup)

(provide 'go-lang)
