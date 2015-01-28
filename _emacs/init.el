;;add pakcages
(when (>= emacs-major-version 24)  
  (require 'package)  
  (package-initialize)  
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)  
 )  

;;add custom theme path
(add-to-list 'custom-theme-load-path "~/.emacs.d/theme/emacs-color-theme-solarized")
(load-theme 'solarized t)

;;enable IDO
(require 'ido)
(ido-mode t)

;;use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;;tab width: 4
(setq tab-width 4)


