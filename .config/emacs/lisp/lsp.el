(use-package eglot
  :ensure t
  :hook
  ((go-mode . eglot-ensure)
   (yaml-mode . eglot-ensure)
   )
  )

;; Show docs on demand instead of hover
(use-package eldoc-box
  :ensure t
  :hook (eglot-managed-mode . eldoc-box-hover-mode)
  )


(use-package go-mode
  :hook (go-mode . (lambda ()
		     (setq gofmt-command "goimports")
		     (add-hook 'before-save-hook #'gofmt-before-save nil t)
		     ))
  )

;; (use-package json-mode
;;   :hook (json-mode . (lambda ()
;; 		       ;; 'nil t' at the end makes this hook run ONLY inside JSON buffers
;; 		       (add-hook 'before-save-hook 
;; 				 (lambda ()
;; 				   (when (executable-find "prettier")
;; 				     ;; Pipes the active buffer text into prettier and replaces it
;; 				     (shell-command-on-region (point-min) (point-max) "prettier --parser json" nil t)))
;; 				 nil t))
;; 		   ))




(use-package corfu
  :ensure t
  :init
  (global-corfu-mode)
  (corfu-popupinfo-mode)
  :custom
  (corfu-auto 1)
  (corfu-cycle 1)
  (corfu-auto-delay 0.7)
  (corfu-auto-prefix 1)
  )


(use-package vertico
  :ensure t
  :init
  (vertico-mode))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides
   '((file (styles partial-completion)))))




;; (use-package eldoc-box
;;   :ensure t
;;   :hook (eglot-managed-mode . eldoc-box-hover-mode))

(use-package kind-icon
  :ensure t
  :after corfu
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

(setq tab-always-indent 'complete)

(use-package verb
  :ensure t
  :custom
  (define-key org-mode-map (kbd "C-c C-r") verb-command-map))

(use-package web-mode
  :ensure t
  :mode (("\\.html?\\'" . web-mode)
         ("\\.css\\'" . web-mode)
	 )
  
  
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  )


(use-package apheleia
  :ensure t
  :config
  (setf (alist-get 'prettier-svelte apheleia-formatters) '(
							   "apheleia-npx" "prettier" "--plugin" "prettier-plugin-svelte"  "--stdin-filepath" filepath
							   ))
  (setf (alist-get 'svelte-mode apheleia-mode-alist) 'prettier-svelte)
  (apheleia-global-mode +1))


(add-to-list 'load-path "/home/sirpi/.config/emacs/svelte-mode")
(require 'svelte-mode)

(use-package emmet-mode
  :hook ((svelte-mode . emmet-mode))
  )


(provide 'lsp)
