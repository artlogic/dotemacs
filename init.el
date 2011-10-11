;; James Kruth's Emacs config

;; Disable some unneeded visual stuff
(setq inhibit-startup-screen t)
(tool-bar-mode -1)

;; Optional mode lines
(column-number-mode t)

;; Backup file settings
;;
;; Enable numbered version control
;; Store all the backups in ~/.emacs.d/backups
;; Keep the 8 newest backups (and 2 oldest, by default)
;; Delete old versions silently
;; Don't alter the user/group of the file being edited - this might not be a
;; great idea for everyday use - consider other options.
;;
;; If I start using tramp, I may also want to customize
;; tramp-backup-directory-alist
(setq 
 version-control t
 backup-directory-alist '(("." . "~/.emacs.d/backups"))
 kept-new-versions 8
 delete-old-versions t
 backup-by-copying-when-mismatch t)
 