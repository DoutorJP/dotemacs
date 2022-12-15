;; Backups
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; Remover menus
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; dashboard
(setq dashboard-items nil)

;; Linhas
(setq-default truncate-lines t)
(setq-default tab-width 4)
(setq-default fill-column 80)


;; Funções
(defun linhas()
  (interactive)
  (display-line-numbers-mode 'toggle)
  (setq display-line-numbers 'relative)  
  )


(defun xah-comment-dwim ()
"Like `comment-dwim', but toggle comment if cursor is not at end of line.

URL `http://xahlee.info/emacs/emacs/emacs_toggle_comment_by_line.html'
Version 2016-10-25"
  (interactive)
  (if (region-active-p)
      (comment-dwim nil)
    (let (($lbp (line-beginning-position))
          ($lep (line-end-position)))
      (if (eq $lbp $lep)
          (progn
            (comment-dwim nil))
        (if (eq (point) $lep)
            (progn
              (comment-dwim nil))
          (progn
            (comment-or-uncomment-region $lbp $lep)
            (forward-line )))))))


;; Minhas binds
(global-set-key (kbd "C-x e") 'eshell) 
(global-set-key (kbd "<f2>") 'treemacs)
(global-font-lock-mode 1)
(global-set-key (kbd "C-c h") 'company-complete)
(global-set-key (kbd "C-c C-f") 'fold-this-all) ;; Fold this
(global-set-key (kbd "C-c C-F") 'fold-this)
(global-set-key (kbd "C-c M-f") 'fold-this-unfold-all)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "<f3>") 'linhas)
(global-set-key (kbd "M-;") 'xah-comment-dwim) 



;; =============== PACKAGES ================ ;;

n(load-file "~/.emacs.d/themes/mytheme.el")

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

(which-key-mode)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

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
(setq dashboard-startup-banner "~/.emacs.d/eicon.png")
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
 '(custom-enabled-themes '(professional))
 '(custom-safe-themes
   '("927fefdb109583f21657c6d15542d3a45ca9100fab292db625c881805d745ad6" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" "7680e0d0fe93475fcdc514ae4df428245ab30c57114a753701e4fc09a15c949b" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "0d2882cc7dbb37de573f14fdf53472bcfb4ec76e3d2f20c9a93a7b2fe1677bf5" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "8da34297ccd16aa9fdf75596dc06d519a5f036179fbff95107bbecdaadf965c4" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "a2fddf71e4e7c82ab17737ed44e5601b5dbd2cf9fee295413dcd887b7dab1e93" "98fada4d13bcf1ff3a50fceb3ab1fea8619564bb01a8f744e5d22e8210bfff7b" "db5b906ccc66db25ccd23fc531a213a1afb500d717125d526d8ff67df768f2fc" "f0eb51d80f73b247eb03ab216f94e9f86177863fb7e48b44aacaddbfe3357cf1" "3a9f65e0004068ecf4cf31f4e68ba49af56993c20258f3a49e06638c825fbfb6" default))
 '(highlight-indent-guides-method 'character)
 '(package-selected-packages
   '(exotica-theme professional-theme sublime-themes vterm latex-math-preview pdf-tools catppuccin-theme modus-themes math-symbols auto-complete yasnippet ggtags all-the-icons-gnus all-the-icons-dired spaceline web-mode 0blayout smartparens flycheck twilight-theme treemacs inkpot-theme spacemacs-theme gruvbox-theme org-bullets nano-modeline nano-theme svg-lib all-the-icons-completion lsp-mode dashboard which-key company-tabnine company ujelly-theme ## use-package try timu-spacegrey-theme))
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
 '(default ((t (:background nil)))))
(add-hook 'after-init-hook 'global-company-mode)
(use-package company-tabnine :ensure t)

(put 'scroll-left 'disabled nil)



;; Also highlight parens
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;scheme
(setq scheme-program-name "scm")

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (require 'dap-cpptools)
  (yas-global-mode))

;; Enabling only some features
(setq dap-auto-configure-features '(sessions locals controls tooltip))

(setq indent-tabs-mode nil)
(setq-default electric-indent-inhibit t)
(electric-pair-mode 1)
