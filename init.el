 ;; -*- mode: Lisp; fill-column: 75; comment-column: 50; -*-
;; Local Variables

(add-to-list 'load-path "~/.emacs.d")

;; Custom settings
(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file)
    (load custom-file))

;;(require 'defuns)
(require 'settings)
(require 'font)
(require 'theme)
(require 'bindings)
(require 'session)
(require 'spelling)
;;(require 'mode-line-conf)
;;(require 'packages)
;;(require 'modes)

;; doc mode
;; autodetect file encoding
;; find-file-literally

;;(unless (server-running-p)
;;  (server-start))

;;TODO
;; autoinsert
;; progmodes
;;    c/c++, go, python, java, haskell, prolog, elisp
;;    gdb
;;    avr/pic/msp430
;; context help
;; autocomplete
;; yasnippet
;; org-mode
;; ediff
;; git
;; erc, twitter, jabber
;; cedet
;; TeX
