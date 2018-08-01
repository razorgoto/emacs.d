(add-to-list 'load-path "~/.emacs.d/lisp/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(package-selected-packages
   (quote
    (xref-js2 js2-mode web-beautify web-mode web-search wgrep csv-mode ereader ini-mode json-mode json-navigator json-reformat markdown-mode markdown-mode+ markdown-preview-eww markdown-preview-mode orca org-evil org-journal powershell w32-browser xml+ evil-org evil-tutor ## pocket-reader evil)))
 '(show-paren-mode t))



;; Set backup file to be save in system defined temp folders
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
  (package-initialize)

(require 'evil)
(evil-mode 0)


;; set default font in initial window and for any new window
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (when (member "Consolas" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Consolas-13"))
    (add-to-list 'default-frame-alist '(font . "Consolas-13"))))
 ((string-equal system-type "darwin") ; macOS
  (when (member "Menlo" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Menlo"))
    (add-to-list 'default-frame-alist '(font . "Menlo"))))
 ((string-equal system-type "gnu/linux") ; linux
  (when (member "DejaVu Sans Mono" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-13"))
    (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-13")))))


(cond
 ((string-equal system-type "windows-nt")
  (load "powershell.el")))
