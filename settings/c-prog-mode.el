
(add-hook 'c-mode-common-hook
          '(lambda ()
             (c-toggle-auto-state 1)
             (define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
           )
)

(setq c-default-style "linux")

(provide 'c-prog-mode)
