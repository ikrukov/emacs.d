 ;; -*- mode: Lisp; fill-column: 75; comment-column: 50; -*-
;; Local Variables

(add-to-list 'load-path "~/.emacs.d")

;; Custom settings
(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file)
    (load custom-file))

(require 'theme)
(require 'font)
;;(require 'defuns)
(require 'settings)
(require 'bindings)
(require 'session)
(require 'spelling)
(require 'indentation)
(require 'c-prog-mode)
(require 'melpa-init)
(require 'haskell-settings)
(require 'octave-settings)

;;(require 'mode-line-conf)
;;(require 'packages)
;;(require 'modes)


;; doc mode
;; autodetect file encoding
;; find-file-literally
;; whitespace-mode - show spaces
;; ielm http://emacs-fu.blogspot.ru/2011/03/ielm-repl-for-emacs.html

;; follow-mode
;; window/frame resize?

;;(unless (server-running-p)
;;  (server-start))

;;TODO
;; autoinsert
;; progmodes
;;    c/c++, go, python, java, haskell, prolog, elisp
;;    gdb
;;    avr/pic/msp430/vhdl
;; context help
;; autocomplete
;; yasnippet
;; org-mode
;; ediff
;; git
;; erc, twitter, jabber
;; cedet
;; TeX
;; Orgmode
;;http://emacs-fu.blogspot.ru/2009/11/showing-pop-ups.html
