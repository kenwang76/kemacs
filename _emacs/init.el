;; company-mode
(add-hook 'after-init-hook 'global-company-mode)

;;add custom theme path
(load-theme 'wombat t)

;;enable IDO
(require 'ido)
(ido-mode t)

;; make ido display choices vertically
(setq-default ido-separator "\n")

;; display any item that contains the chars you typed
(setq-default ido-enable-flex-matching t)

;;use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;;tab width: 4
(setq-default tab-width 4)


