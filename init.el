(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; Remover menus
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Linhas
(setq-default truncate-lines t)
(setq-default tab-width 4)
(setq-default fill-column 80)
(global-hl-line-mode)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; tags for code navigation
(use-package ggtags
:ensure t
:config
(add-hook 'c-mode-common-hook
(lambda ()
(when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
(ggtags-mode 1))))
)
(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

(use-package fold-this
  :ensure t)

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package highlight-indent-guides
  :ensure t
  :config (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))

(use-package smartparens
  :config
  (require 'smartparens-config)
  (add-hook 'lisp-mode-hook #'smartparens-strict-mode))
(provide 'init-smartparens)

(use-package flycheck
  :init (global-flycheck-mode))
(provide 'init-flycheck)

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode))
(provide 'init-company)

(use-package web-mode)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-startup-banner "~/.emacs.d/gif.gif")
(setq dashboard-banner-logo-title "Bem vindo ao Emacs!")
(setq dashboard-center-content t)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-operandi))
 '(custom-safe-themes
   '("4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "8da34297ccd16aa9fdf75596dc06d519a5f036179fbff95107bbecdaadf965c4" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "a2fddf71e4e7c82ab17737ed44e5601b5dbd2cf9fee295413dcd887b7dab1e93" "98fada4d13bcf1ff3a50fceb3ab1fea8619564bb01a8f744e5d22e8210bfff7b" "db5b906ccc66db25ccd23fc531a213a1afb500d717125d526d8ff67df768f2fc" "f0eb51d80f73b247eb03ab216f94e9f86177863fb7e48b44aacaddbfe3357cf1" "3a9f65e0004068ecf4cf31f4e68ba49af56993c20258f3a49e06638c825fbfb6" default))
 '(highlight-indent-guides-method 'character)
 '(package-selected-packages
   '(modus-themes math-symbols auto-complete yasnippet ggtags all-the-icons-gnus all-the-icons-dired spaceline web-mode 0blayout smartparens flycheck twilight-theme treemacs inkpot-theme spacemacs-theme gruvbox-theme org-bullets nano-modeline nano-theme svg-lib all-the-icons-completion lsp-mode dashboard which-key company-tabnine company ujelly-theme ## use-package try timu-spacegrey-theme))
 '(warning-suppress-log-types
   '(((package reinitialization))
	 ((package reinitialization))
	 ((package reinitialization))))
 '(warning-suppress-types
   '(((package reinitialization))
	 ((package reinitialization))
	 ((package reinitialization)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#ffffff" :foreground "#000000" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "ADBO" :family "Roboto Mono ")))))
(add-hook 'after-init-hook 'global-company-mode)
(use-package company-tabnine :ensure t)

(put 'scroll-left 'disabled nil)

;; Minhas funçoes
(defun this-line-to-top-of-window(line)
  "Reposition current line to top of window"
  (interactive "P")
  (recenter (if (null line)
				0
			  (prefix-numeric-value line))))

;; Minhas binds
(global-set-key (kbd "C-x e") 'eshell) 
(global-set-key (kbd "<f2>") 'treemacs)
(global-font-lock-mode 1)
(global-set-key (kbd "C-c h") 'company-complete)
(global-set-key (kbd "C-c C-f") 'fold-this-all) ;; Fold this
(global-set-key (kbd "C-c C-F") 'fold-this)
(global-set-key (kbd "C-c M-f") 'fold-this-unfold-all)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "<f3>") 'linum-mode)

;;; Also highlight parens
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;;; This is the binary name of my scheme implementation
(setq scheme-program-name "scm")
