
;; Disable startup screen
(setq startup-screen-inhibit-startup-screen t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)

;; Font settings
;; "Ubuntu Mono"
(condition-case nil
    (set-face-attribute 'default nil :family "Ubuntu Mono" :height 120))

(when (display-graphic-p)
  ;; Hide toolbar, menu and scrollbars
  (tool-bar-mode -1)
  (menu-bar-mode t)
  (scroll-bar-mode -1)
)

;; Highlight parenthesis/brackets
(require 'paren)
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; Use y/n instead of yes/no for questions
(defalias 'yes-or-no-p 'y-or-n-p)

;; Highlight matches during query replacement
(setq query-replace-highlight t)

;; Highlight current search match
(setq search-highlight t)

;; Indicate column number on status bar
(setq column-number-mode t)

;; Indicate line number on the left side
(if (functionp 'global-linum-mode)
    (global-linum-mode t))

;; Blink cursor
(blink-cursor-mode -1)

;; Show buffer size
(setq size-indication-mode t)

;; Misc indicators
(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries t)

;; Frame title format: filename (fullpath)
(setq frame-title-format "%b (%f)")

;; Syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(global-hi-lock-mode t)


;; Minibuffer
;;(setq enable-recursive-minibuffers nil ;;  allow mb cmds in the mb
;;      max-mini-window-height .25       ;;  max 2 lines
;; minibuffer-scroll-window nil
;; resize-mini-windows nil)

;; Highlight current line
(global-hl-line-mode t)

;; Small fringes
(set-fringe-mode '(1 . 1))


(provide 'visual)
