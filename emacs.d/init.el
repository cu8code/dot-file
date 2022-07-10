(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Bootstrap 'use-package'
(eval-after-load 'gnutls
  '(add-to-list 'gnutls-trustfiles "/etc/ssl/cert.pem"))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'bind-key)
(setq use-package-always-ensure t)

;;; Standard ML Support
(unless (package-installed-p 'sml-mode)
  (package-install 'sml-mode))

;;; Swift Support
(unless (package-installed-p 'swift-mode)
  (package-install 'swift-mode))

;;; Typescript Support
(use-package typescript-mode
  :mode (("\\.tsx\\'" . typescript-mode)
	 ("\\.ts\\'" . typescript-mode))
  :ensure t)

;;; YAML Support
(unless (package-installed-p 'yaml-mode)
  (package-install 'yaml-mode))

;;; Markdown support
(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))

;;; EditorConfig support
(unless (package-installed-p 'editorconfig)
  (package-install 'editorconfig))

;; Enable EditorConfig
(editorconfig-mode t)

;;; Vim Emulation
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Vim emulation
(evil-mode t)

;; mouse
(require 'disable-mouse)
(global-disable-mouse-mode)
(mapc #'disable-mouse-in-keymap
      (list evil-motion-state-map
	    evil-normal-state-map
	    evil-visual-state-map
	    evil-insert-state-map))

;; Theme
(load-theme 'base16-default-dark t)

;; Font
(add-to-list 'default-frame-alist '(font . "Fira Code"))
(set-face-attribute 'default t :font "Fira Code")

;; Miscellaneous options
(setq-default major-mode
	      (lambda () ; guess major mode from file name
		(unless buffer-file-name
		  (let ((buffer-file-name (buffer-name)))
		    (set-auto-mode)))))
(setq window-resize-pixelwise t)
(setq frame-resize-pixelwise t)
(save-place-mode t)
(savehist-mode t)
(recentf-mode t)
(defalias 'yes-or-no #'y-or-n-p)

;; emacs
(setq confirm-kill-emacs 'y-or-n-p)
(setq use-short-answers t)
(global-display-line-numbers-mode)
(fset 'yes-or-no-p 'y-or-n-p)

(global-hl-line-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)

(setq tab-width 2) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

(setq backup-directory-alist' ((".*" . "~/.trash")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(impatient-mode yaml-mode use-package typescript-mode swift-mode sml-mode markdown-mode evil editorconfig disable-mouse base16-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )