;;(setq gofmt-command "goimports")
;;(add-hook 'before-save-hook #'gofmt-before-save)

(add-hook 'org-mode-hook #'org-indent-mode)
(add-hook 'prog-mode-hook #'global-display-line-numbers-mode)
(add-hook 'term-mode-hook (lambda () (display-line-numbers-mode -1)))
(add-hook 'shell-mode-hook (lambda () (display-line-numbers-mode -1)))
;; Enable csv-mode for all .csv files
(add-to-list 'auto-mode-alist '("\\.csv\\'" . csv-mode))


(add-hook 'web-mode-hook 'emmet-mode)

(add-hook 'org-mode-hook #'org-inline-pdf-mode)



(provide 'hooks)
