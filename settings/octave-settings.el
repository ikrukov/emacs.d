
(setq auto-mode-alist
	  (cons '("\\.m$" . octave-mode) auto-mode-alist))

 (add-hook 'octave-mode-hook
                    (lambda ()
                      (abbrev-mode 1)
                      (auto-fill-mode 1)
                      (if (eq window-system 'x)
                          (font-lock-mode 1))))



;; (define-key octave-mode-map "\C-m"
;;       'octave-reindent-then-newline-and-indent)

(provide 'octave-settings)
