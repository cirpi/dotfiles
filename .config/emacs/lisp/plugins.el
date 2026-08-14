(setq telephone-line-primary-left-separator 'telephone-line-cubed-left
      telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
      telephone-line-primary-right-separator 'telephone-line-cubed-right
      telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)


(require 'telephone-line
	 (telephone-line-mode 1))

(use-package vlf
  :ensure t
  :config
  (require 'vlf-setup)
  ;; Automatically open large files with VLF without prompting
  (custom-set-variables '(vlf-application 'dont-ask)))

(use-package magit
  :ensure t
  :bind (("C-c b" . magit-blame)))

(use-package beacon
  :ensure t
  :config
  (beacon-mode 1))

(use-package writegood-mode
  :ensure t
  :hook (text-mode . writegood-mode))




(provide 'plugins)
