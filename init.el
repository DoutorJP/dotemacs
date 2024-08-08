(set-variable (quote scheme-program-name) "scm")
(setq org-bullets t)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-x e") 'vterm)
(global-set-key (kbd "<f3>") #'linhas)
(global-set-key (kbd "M-<down>") 'enlarge-window)
(global-set-key (kbd "M-<up>") 'shrink-window)
(global-set-key (kbd "M-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<right>") 'shrink-window-horizontally)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "C-c r") 'replace-string)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(setq sgml-quick-keys 'close)

;; startup message
(setq inhibit-startup-message t)

;; Backups
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; Remover menus
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Linhas
(setq-default truncate-lines t)
(setq-default tab-width 4)
(setq-default fill-column 80)
(defun linhas()
  (interactive)
  (display-line-numbers-mode 'toggle)
  (setq display-line-numbers 'relative)  
  )



(setq electric-pair-pairs
      '(
        (?\" . ?\")
        (?\{ . ?\})))
(electric-pair-mode 1)

(setq-default cursor-type 'bar)

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(use-package which-key
  :ensure t
  :config
  (progn
	(which-key-setup-side-window-right)
	(which-key-mode)))

(use-package auto-complete
  :ensure t
  :init
  (progn
	(ac-config-default)
	(global-auto-complete-mode t)
	))


(use-package try
  :ensure t
  :defer t)

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

;;;(use-package smartparens
;;;  :config
;;;  (require 'smartparens-config)
;;  (add-hook 'lisp-mode-hook #'smartparens-strict-mode))
;;;(provide 'init-smartparens)

(use-package all-the-icons
  :ensure t)



(use-package ace-window
  :ensure t
  :bind (("C-x o" . ace-window)))


(use-package rainbow-delimiters
  :ensure t)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(ef-deuteranopia-light))
 '(custom-safe-themes
   '("6a94122cfa72865c9b7a211ee461e4cc8834451d035fb43ffa478a630dec3d5b" "dbc6d947d551aa03090daf6256233454c6a63240e17a8f3d77889d76fef1749d" "e4013fb0675182b04aa22f29054842db418d5a72da7ebb3c5b9dbb624502aaec" "0af4fc8329f73bd771df30015858813385461513e044df730fc805a49f5ece52" "25c88ae249600a2c8ede786a99d07b0099a5da12e30f044e369561e84f40f23e" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "84c2c93ce268699838b51eeeaaec46e064d5048e232b39113b73209be3ef6fd4" "b54bf2fa7c33a63a009f249958312c73ec5b368b1094e18e5953adb95ad2ec3a" "c2efe6f5e2bd0bddfb2d6e26040545768939d2029f77e6b6a18d1ee0e0cb1033" "e16cd3e6093cf35e65dbac6c7649931936f32f56be34477cb7cbe1ee332c5b99" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "74367676a7b0562975704f8e576d5e103451527b36c9226a013cd8f3ae2140f5" "544bb10f6c6d7338be3bc73d147f26273d62e094e7643bfa842dffa9d742e30a" "72ca2b0770981be70839fc2b738fc81f6268477653a6d89df67f0f94eb64e1e7" "ffef467dfed832df46d4e188049e52aad1d64c16070484fc6b62f158ece95471" "f48be80177f0d9a2b19d8dc19f3903d9be3c4d885d110e82b591d1184586fad0" "72cc2c6c5642b117034b99dcc3a33ff97a66593429c7f44cd21b995b17eebd4e" "b64a60e69617b4348d0402fad2f0d08a694301132e7ab243dab4d6a65c3bf948" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" default))
 '(package-selected-packages
   '(nordic-night-theme vterm dracula-theme ## ef-themes ample-zen-theme ace-jump-mode org-bullets dotnet gruvbox-theme magit rust-mode csharp-mode electric-pair-mode rainbow-delimiters pulsar markdown-mode ample-theme which-key use-package try swiper dashboard auto-complete all-the-icons ace-window)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background nil :foreground nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "PfEd" :family "Fantasque Sans Mono")))))
