;; ======================================================================
;; INSTRUCTIONS: This file is auto-generated from Haqiba(haqiba.org).
;; Untar this tarball(emacs.d.tar) using the command
;; 'tar -xvf emacs.d.tar'
;; and copy the directory '.emacs.d' to your $HOME(~/).
;; ======================================================================


(require 'cl)

(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq package-archive-enable-alist '(("melpa" deft magit)))

(defvar abedra/packages '(ac-slime
                          auto-complete
                          autopair
                          gist
                          go-mode
                          graphviz-dot-mode
                          haml-mode
                          haskell-mode
                          htmlize
                          magit
                          markdown-mode
                          marmalade
                          nodejs-repl
                          o-blog
                          org
                          paredit
                          php-mode
                          puppet-mode
                          restclient
                          rvm
                          scala-mode
                          smex
                          sml-mode
                          solarized-theme
                          web-mode
                          writegood-mode
                          yaml-mode)
  "Default packages")

(defun abedra/packages-installed-p ()
  (loop for pkg in abedra/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (abedra/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg abedra/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;;enable IDO
(require 'ido)
(ido-mode t)

;; make ido display choices vertically
(setq-default ido-separator "\n")

;; display any item that contains the chars you typed
(setq-default ido-enable-flex-matching t)

;;use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;;tab width: 2
(setq-default tab-width 2)

;; theme
(load-theme 'wombat t)

;;; Column-number
;; Show column number in mode-line.
(column-number-mode t)

;; Show line numbers
(global-linum-mode 1)

;;; No-tool-menu-bar
(menu-bar-mode 0)
(tool-bar-mode 0)

;;; Server
(require 'server)
(unless (server-running-p)
  (server-start))

;;; Which-function
(which-function-mode t)

;; Auto pair - http://www.aaronbedra.com/emacs.d/#sec-1-6-8
(require 'autopair)

;; Auto complete - http://www.aaronbedra.com/emacs.d/#sec-1-6-10
(require 'auto-complete-config)
(ac-config-default)

;; turn off backup file
(setq make-backup-files nil)

;; marking text
(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

;; turn off temparory file
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

