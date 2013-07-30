;; Change active window - Alt+arrow
(windmove-default-keybindings 'meta)
(global-set-key "\C-Z" 'undo)

1(global-set-key [f11] 'toggle-frame-fullscreen)
(global-set-key [(mouse-3)] 'mouse-major-mode-menu)
(global-set-key "\C-c" 'comment-or-uncomment-region )

;; TODO - add binding for context help

(provide 'bindings )
