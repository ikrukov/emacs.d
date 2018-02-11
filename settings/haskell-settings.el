(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;; ;Set indent mode - only 
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;;(add-hook 'haskell-mode-hook 'haskell-font-lock-symbols )
(setq haskell-font-lock-symbols t)

(setq haskell-interactive-popup-errors nil)

;; (defun my-align-single-equals ()
;;   "Align on a single equals sign (with a space either side)."
;;   (interactive)
;;   (align-regexp
;;    (region-beginning) (region-end)
;;    "\\(\\s-*\\) = " 1 0 nil))


;;(define-key haskell-mode-map (kbd "C-a") 'my-align-single-equals )
;;(define-key haskell-mode-map (kbd "C-,") 'haskell-move-nested-left)
;;(define-key haskell-mode-map (kbd "C-.") 'haskell-move-nested-right)


(eval-after-load "haskell-mode"
   '(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile))

 (eval-after-load "haskell-cabal"
     '(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-compile))

(require 'haskell-interactive-mode)
(require 'haskell-process)

;; Fix for compiler 8.2.2 output parser

(setq haskell-process-args-ghci
      '("-ferror-spans" "-fshow-loaded-modules"))

(setq haskell-process-args-cabal-repl
       '("--ghc-options=-ferror-spans -fshow-loaded-modules"))

(setq haskell-process-args-stack-ghci
      '("--ghci-options=-ferror-spans -fshow-loaded-modules"
        "--no-build" "--no-load"))

(setq haskell-process-args-cabal-new-repl
      '("--ghc-options=-ferror-spans -fshow-loaded-modules"))

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
;; (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
;; (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
;; (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
;; (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
;; (define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)

;; (define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
;; (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
;; (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
;; (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)

;; (custom-set-variables
;;  '(haskell-tags-on-save t))

;;(define-key haskell-mode-map (kbd "M-.") 'haskell-mode-tag-find)
;; ;;(define-key haskell-mode-map (kbd "M-.") 'haskell-mode-jump-to-def-or-tag)

(provide 'haskell-settings)
