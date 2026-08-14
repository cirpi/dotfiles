(set-face-font 'default  "ComicCode Nerd Font"  nil)  
(set-face-attribute 'default nil :height 100)

(add-to-list 'default-frame-alist '(font . "ComicCode Nerd Font-10.0"))


(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(global-hl-line-mode 1)
(spacious-padding-mode 1)

;; To use the other dired buffer as the target destination for pasting
(setq dired-dwim-target t)

(setq custom-safe-themes t)
(load-theme 'doom-dark+) ;; just here to validate the automatic theme switching.
(setq telephone-line-height 40)

(setq httpd-port 8121)
(setq httpd-root "/home/sirpi")

(setq shell-file-name "/usr/bin/fish")

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)
(setq tab-always-indent 'complete)


(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(whole-line-or-region-global-mode 1)


(setq org-agenda-files '("/home/sirpi/Documents/org/sirpi.org"))

(setq org-tag-alist '(( "work" . ?w)
		      ( "personal" . ?p)))


;; Save history across sessions (M-x commands, shell history,
(savehist-mode 0)

;; Automatically reload files if they change on disk (great for build tools)
(global-auto-revert-mode 1)

;; Remember your cursor position when reopening a file
(save-place-mode 1)

;; Don't pop up standard graphical dialog boxes; use the minibuffer
(setq use-dialog-box nil)

;; Answer prompts with 'y' or 'n' instead of typing 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

(setq display-time-day-and-date 1)
(display-time-mode 1)
(setq org-log-done 'time)
(setq default-directory "~/")

(setq browse-url-browser-function 'eww-browse-url)

(setq url-user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36")


(defun theme-switch-by-time ()
  (interactive)
  (let ((current-hour (string-to-number (format-time-string "%H"))))
    (if (or (>= current-hour 20) (<= current-hour 6))
	(load-theme 'ef-cherie t)
      (load-theme 'ef-rosa t)
      )
    ))
;; (defvar theme-switch-timer nil)
;; (setq theme-switch-timer (run-at-time nil  5 #'theme-switch-by-time))

;; (cancel-timer theme-switch-timer)

(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups/"))))

(setq ediff-window-setup-function 'ediff-setup-windows-plain)


(setq git-commit-summary-max-length 100)


;; Define a central location for temporary Emacs files
(defvar my-emacs-temporary-directory (expand-file-name "~/.emacs.d/tmp/"))

;; Create the directory automatically if it does not exist
(unless (file-exists-p my-emacs-temporary-directory)
  (make-directory my-emacs-temporary-directory t))

;; Redirect "#file#" auto-save files
(setq auto-save-file-name-transforms
      `((".*" ,my-emacs-temporary-directory t)))

;; Redirect "file~" backup files
(setq backup-directory-alist
      `((".*" . ,my-emacs-temporary-directory)))


(provide 'settings)
