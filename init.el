 ;; -*- mode: Lisp; fill-column: 75; comment-column: 50; -*-
;; Local Variables

(add-to-list 'load-path "~/.emacs.d")

;; Custom settings
(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file)
    (load custom-file))


;;(require 'defuns)
(require 'settings)
(require 'visual)
(require 'bindings)
(require 'session)
(require 'editing)
(require 'theme)
;;(require 'packages)
;;(require 'modes)

;;(unless (server-running-p)
;;  (server-start))

;;TODO
;; autoinsert
;; progmodes
;;    c/c++, go, python, java, haskell, prolog
;;    gdb
;;    avr/pic/msp430
;; autocomplete
;; org-mode
;; ediff
;; git
;; erc, twitter
;; cedet
;; TeX
