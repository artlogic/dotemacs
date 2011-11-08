;; James Kruth's Emacs config

;; figure out where we've been loaded from
(setq dotfiles-dir (file-name-directory load-file-name))

;; Disable some unneeded visual stuff
(setq inhibit-startup-screen t)
(tool-bar-mode -1)

;; Optional mode lines
(column-number-mode t)

;; Global minor modes
(show-paren-mode t)

;; Backup file settings - for non vc folders
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
 backup-directory-alist `(("." . ,(concat dotfiles-dir "backups")))
 kept-new-versions 8
 delete-old-versions t
 backup-by-copying-when-mismatch t)

;; markdown mode 
(add-to-list 'load-path (concat dotfiles-dir "markdown-mode"))
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;; markdown mode should have autofill, IMHO
(add-hook 'markdown-mode-hook 'turn-on-auto-fill)

;; magit
(add-to-list 'load-path (concat dotfiles-dir "magit"))
;; taken from 50magit.el
(autoload 'magit-status "magit" nil t)
