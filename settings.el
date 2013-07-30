;; Disable startup screen
(setq startup-screen-inhibit-startup-screen t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Scrolling
(setq scroll-conservatively 50)
(setq scroll-margin 3)

;; Do not backup files
(setq make-backup-files nil)

;; autodetect file encoding
;; (prefer-coding-system 'cp866)
;; (prefer-coding-system 'koi8-r-unix)
;; (prefer-coding-system 'windows-1251-dos)
;; (prefer-coding-system 'utf-8-unix)


;; Hide unnecessary UI
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

;; Display time in modeline
;;(setq display-time-day-and-date t)
(setq  display-time-24hr-format t)
(display-time)

;; Misc indicators
(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries t)

;; Frame title format: filename (fullpath)
(setq frame-title-format "%b (%f)")

;; Syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(global-hi-lock-mode t)

;; Highlight current line
(global-hl-line-mode t)

;; Small fringes
(set-fringe-mode '(5 . 5))

;; text mode defaults
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq auto-fill-mode t)
(setq fill-column 80)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
(setq post-forward-angle-brackets 'post-forward-angle-brackets)

;; ido
(require 'ido)
(ido-mode t )

;; ISwitchBuffers
 (iswitchb-mode 1)
(setq iswitchb-buffer-ignore '("^ " "*Buffer"))
(add-to-list 'iswitchb-buffer-ignore "*Messages*")
(add-to-list 'iswitchb-buffer-ignore "*Backtrace")
(setq iswitchb-default-method 'samewindow)

;; for isb + uniquify
    (defadvice iswitchb-kill-buffer (after rescan-after-kill activate)
      "*Regenerate the list of matching buffer names after a kill.
    Necessary if using `uniquify' with `uniquify-after-kill-buffer-p'
    set to non-nil."
      (setq iswitchb-buflist iswitchb-matches)
      (iswitchb-rescan))

    (defun iswitchb-rescan ()
      "*Regenerate the list of matching buffer names."
      (interactive)
      (iswitchb-make-buflist iswitchb-default)
      (setq iswitchb-rescan t))

;; Minibuffer
;;(setq enable-recursive-minibuffers nil ;;  allow mb cmds in the mb
;;      max-mini-window-height .25       ;;  max 2 lines
;; minibuffer-scroll-window nil
;; resize-mini-windows nil)


;; tramp ( Transparent Remote Access Mode )
(setq tramp-default-method "ssh")

;; Adds a new line at the last line
;;(setq require-final-newline t)

;; Tags filename
(setq tags-file-name "TAGS")

;; Use system clipboard for copy/paste
(setq x-select-enable-clipboard -1)

;; Tab either indents or complete
(setq tab-always-indent 'complete)

;; Trailing whitespace
(setq show-trailing-whitespace t)
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq compilation-read-command nil)
(setq compilation-ask-about-save nil)

(provide 'settings)
