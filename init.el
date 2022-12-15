(set-face-attribute 'default nil :font "Iosevka:weight=normal" :height 130)
(global-set-key (kbd "C-x e") 'eshell) 
(global-set-key (kbd "<f2>") 'treemacs)
;;(global-font-lock-mode 1)
(global-set-key (kbd "C-c h") 'company-complete)
(global-set-key (kbd "C-c C-f") 'fold-this-all) ;; Fold this
(global-set-key (kbd "C-c C-F") 'fold-this)
(global-set-key (kbd "C-c M-f") 'fold-this-unfold-all)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "<f3>") 'linhas)
(global-set-key (kbd "M-;") 'xah-comment-dwim) 
(ac-config-default)

;; Remover tela de inicio
(setq inhibit-startup-message t)

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

;; Identação
(setq indent-tabs-mode nil)
(setq-default electric-indent-inhibit t)
(electric-pair-mode 1)

;; Removendo Backups
(setq create-lockfiles nil)
(setq auto-save-default nil)

;;Rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

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

 (require 'package)
 (setq package-enable-at-startup nil)

 (add-to-list 'package-archives
		  '("melpa" . "https://melpa.org/packages/"))

 (package-initialize)

 (unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))

(use-package all-the-icons
	:ensure t
       :defer t)

(use-package which-key
:ensure t
:config
(progn
(which-key-setup-side-window-right)
(which-key-mode)))



(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
	     (setq dashboard-center-content t)
	     (setq dashboard-show-shortcuts nil)
	     (setq dashboard-set-heading-icons t)
	     (setq dashboard-set-file-icons t)
	     (setq dashboard-startup-banner "~/.emacs.d/eicon.png")
(visual-line-mode t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(use-package try
:ensure t
:defer t)

(use-package page-break-lines
:defer t
:ensure t)

(use-package elcord
:ensure t
:config(progn
(setq elcord-editor-icon "emacs")))
(require 'elcord)
(elcord-mode)

(use-package lsp-mode
  :ensure t
    :hook (
(c-mode . lsp)
(lsp-mode . lsp-enable-which-key-integration)
(lsp-mode . lsp-ui-mode))
:commands lsp)

  (use-package lsp-ui :commands lsp-ui-mode
  :init
  :ensure t
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-enable nil))
(setq lsp-keymap-prefix "C-c l")

(use-package base16-theme
  :ensure t)

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

(use-package fold-this
  :ensure t)

(use-package highlight-indent-guides
  :ensure t
  :config (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))

(use-package smartparens
  :config
  (require 'smartparens-config)
  (add-hook 'lisp-mode-hook #'smartparens-strict-mode))
(provide 'init-smartparens)

(use-package flycheck
:ensure t
:config(global-flycheck-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("db5b906ccc66db25ccd23fc531a213a1afb500d717125d526d8ff67df768f2fc" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "a2fddf71e4e7c82ab17737ed44e5601b5dbd2cf9fee295413dcd887b7dab1e93" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "8da34297ccd16aa9fdf75596dc06d519a5f036179fbff95107bbecdaadf965c4" "2572a1a53f2c429652748ac39052c81de2dd4edd874e851b73166140b83e9441" "a39b48aa98d851fea975d9ffadc2be7456603f61dd3d50ae91935cfb3c020ec0" "7680e0d0fe93475fcdc514ae4df428245ab30c57114a753701e4fc09a15c949b" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "efa89445e0e1da86f4e9a2705ab70e7f8286ed293a182c17396c6960e7c88431" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da" "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "251ed7ecd97af314cd77b07359a09da12dcd97be35e3ab761d4a92d8d8cf9a71" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "1cae4424345f7fe5225724301ef1a793e610ae5a4e23c023076dc334a9eb940a" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "8a379e7ac3a57e64de672dd744d4730b3bdb88ae328e8106f95cd81cbd44e0b6" "2035a16494e06636134de6d572ec47c30e26c3447eafeb6d3a9e8aee73732396" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "3eba18bd0d139f8eed6f9bc6772a6a27d54cb4dccc8bf98fe70cce2819a4ba89" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "d01bc7df968c38955e615d49449ef65e4246faa1996e9dc5e04d708982b9aa2b" "020cde904ed215616e28fdb2be584db871af71e8d7f0cdb1911ff7f0050c024b" "a699ccbbb3c2a4acb108ab3845184910042ea8198beee582e8889aa0fdcc942a" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "c3c39b9bf9824d4fa591fbf785a2cb507607f2f36fef05363d6f2dca5c6db82b" "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7" "d0fd069415ef23ccc21ccb0e54d93bdbb996a6cce48ffce7f810826bb243502c" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "cbd85ab34afb47003fa7f814a462c24affb1de81ebf172b78cb4e65186ba59d2" default))
 '(highlight-indent-guides-method 'bitmap)
 '(package-selected-packages
   '(auto-complete-c-headers auto-complete-clang-async auto-complete-clang ewal-doom-themes doom-themes monokai-theme minimal-theme berrys-theme almost-mono-themes aggressive-indent yasnippet-lean yasnippet-classic-snippets yasnippet-snippets rainbow-delimiters base16-theme lsp-ui elcord page-break-lines yasnippet which-key web-mode vterm use-package ujelly-theme twilight-theme try treemacs timu-spacegrey-theme swiper svg-lib sublime-themes spacemacs-theme spaceline smartparens professional-theme pdf-tools org-bullets nano-theme nano-modeline math-symbols lsp-mode latex-math-preview inkpot-theme highlight-indent-guides gruvbox-theme ggtags fold-this flycheck exotica-theme dashboard company-tabnine catppuccin-theme auto-complete all-the-icons-gnus all-the-icons-dired all-the-icons-completion 0blayout)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

;;(load-theme 'minimal-light t)
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)
