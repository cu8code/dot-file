(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;; --------------------------------


;; alias for package manager 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-alwys-ensure t
        use-package-expand-minimally t))
;; --------------------------------


;; Tree-Sitter
(use-package tree-sitter
  :ensure t)
(use-package tree-sitter-langs
  :ensure t)

(global-tree-sitter-mode)

(tree-sitter-require 'rust)
(tree-sitter-require 'python)
(tree-sitter-require 'javascript)

(add-hook 'python-mode 'tree-sitter-hl-mode)
(add-hook 'typescript-mode 'tree-sitter-hl-mode)
(add-hook 'javascript-mode 'tree-sitter-hl-mode)
(add-hook 'rust-mode 'tree-sitter-hl-mode)
(add-hook 'c++-mode 'tree-sitter-hl-mode)
;; --------------------------------


;; VIM BOY
(use-package evil
             :ensure t
             :init 
             (setq evil-want-keybinding nil)
             (evil-mode))
(use-package evil-collection
             :after evil 
             :ensure t 
             :config 
             (evil-collection-init))
;; --------------------------------


;; Which key
(use-package which-key
  :ensure t)
(which-key-mode)
;; --------------------------------


;; Doom-Theme
(use-package doom-themes
             :ensure t)
(setq doom-themes-enable-bold t
    doom-themes-enable-italic t)
(load-theme 'doom-one t)
;; --------------------------------


;; LSP
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode . lsp)
         (typescript-mode . lsp)
         (shellscript-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package company
  :ensure t
  :config
  (setq company-minimum-prefix-length 1
	company-idle-delay 0.0))
(add-hook 'after-init-hook 'global-company-mode)

;; if you are helm user
(use-package helm-lsp
  :commands helm-lsp-workspace-symbol)
;; --------------------------------


;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))
;; --------------------------------


;; Doom Mode line
(use-package doom-modeline
 :ensure t)
(doom-modeline-mode t)
;; --------------------------------


;; ace jump mode major function
(use-package ace-jump-mode
  :ensure t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;; --------------------------------


;; git initigration
(use-package magit
  :ensure t)
;; --------------------------------


;;  Project management
(use-package projectile
  :ensure t)
;; --------------------------------


;; latex-preview
(use-package latex-preview-pane
  :ensure t)
;; --------------------------------


;; MD
(use-package markdown-mode
  :ensure t)
;; --------------------------------


;;Dired
(use-package dired
  :ensure nil
  :commands (dired dired-jump)
  :bind (("C-x C-j" . dired-jump))
  :custom ((dired-listing-switches "-agho --group-directories-first"))
  :config
  (evil-collection-define-key "normal" 'dired-mode-map
    "h" 'dired-up-directory
    "l" 'dired-find-file)
  )
;; --------------------------------


;; Font
(set-face-attribute 'default nil :font "Fira Code 12" :weight 'light)
(add-to-list 'default-frame-alist '(font . "Fira Code 12"))
;; --------------------------------


;; Some settings 
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode) ;; line numbers

(global-hl-line-mode) ;; line highlight
;; --------------------------------


 ;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time


;; KeyBoard binding
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
;; --------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magit mode-icons smex ace-jump-mode which-key use-package typescript-mode tree-sitter-langs python-mode lsp-ui lsp-ivy latex-preview-pane helm-lsp evil-collection edit-indirect doom-themes doom-modeline company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
