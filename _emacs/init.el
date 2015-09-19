;; ======================================================================
;; INSTRUCTIONS: This file is auto-generated from Haqiba(haqiba.org).
;; Untar this tarball(emacs.d.tar) using the command
;; 'tar -xvf emacs.d.tar'
;; and copy the directory '.emacs.d' to your $HOME(~/).
;; ======================================================================

;;; Package
;; Note: This configuration may not work with old versions of Emacs.
;; Marmalade repo
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Melpa repo
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; company-mode
(add-hook 'after-init-hook 'global-company-mode)

;; theme
(load-theme 'wombat t)

;;; Column-number
;; Show column number in mode-line.
(column-number-mode t)

;;; No-tool-menu-bar
(menu-bar-mode 0)
(tool-bar-mode 0)

;;; Server
(require 'server)
(unless (server-running-p)
  (server-start))

;;; Which-function
(which-function-mode t)

