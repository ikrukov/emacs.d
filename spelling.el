
(require 'flyspell)
(require 'ispell)

(setq
 ispell-program-name "aspell"
; my dictionary-alist, using for redefinition russian dictionary
 ispell-dictionary-alist
'(("english"                       ; English
    "[a-zA-Z]"
 "[^a-zA-Z]"
 "[']"
 nil
 ("-d" "en")
 nil iso-8859-1)
("russian"                       ; Russian
    "[АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯабвгдеёжзийклмнопрстуфхцчшщьыъэюя]"
 "[^АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯабвгдеёжзийклмнопрстуфхцчшщьыъэюя]"
 "[-]"
 nil
 ("-C" "-d" "ru")
 nil utf-8)
(nil                             ; Default
    "[A-Za-z]"
 "[^A-Za-z]"
 "[']"
 nil
 ("-C")
 nil iso-8859-1))
ispell-russian-dictionary "russian"
ispell-english-dictionary "english"
flyspell-default-dictionary ispell-russian-dictionary
ispell-dictionary ispell-english-dictionary
ispell-local-dictionary ispell-russian-dictionary

 ispell-extra-args '("--sug-mode=ultra")

)

(defun flyspell-russian ()
(interactive)
(flyspell-mode t)
(ispell-change-dictionary ispell-russian-dictionary)
(flyspell-buffer)
(message "Russian dictionary - Spell Checking completed."))

; English
(defun flyspell-english ()
(interactive)
(flyspell-mode t)
(ispell-change-dictionary ispell-english-dictionary)
(flyspell-buffer)
(message "English dictionary - Spell Checking completed."))


(setq ispell-highlight-face (quote flyspell-incorrect))
(setq ispell-have-new-look t)
(setq ispell-enable-tex-parser t)
(setq flyspell-delay 1)
(setq flyspell-always-use-popup t)

(setq flyspell-issue-welcome-flag -1)


;;(flyspell-mode)
;; flyspell for modes
(dolist (hook '(text-mode-hook latex-mode-hook))
      (add-hook hook (lambda () (flyspell-mode 1))))

(provide 'spelling)
