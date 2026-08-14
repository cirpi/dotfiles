(defvar line-iterate-count 5)
(defvar char-iterate-count 10)

(defun next-ten-lines ()
  (interactive)
  (next-line line-iterate-count))
(keymap-global-set "C-S-n" #'next-ten-lines)

(defun prev-ten-lines()
  (interactive)
  (previous-line line-iterate-count))
(keymap-global-set "C-S-p" #'prev-ten-lines)

(defun forward-ten-chars()
  (interactive)
  (forward-char char-iterate-count))

(keymap-global-set "C-S-f" #'forward-ten-chars)

(defun backward-ten-chars ()
  (interactive)
  (backward-char char-iterate-count))

(keymap-global-set "C-S-b" #'backward-ten-chars)


(defvar-keymap avy-keymaps
  :doc "Avy specific keymaps"
  "c" 'avy-goto-char
  "w" 'avy-goto-word-0)



(keymap-global-set "C-;" avy-keymaps)

(keymap-global-set "C-c a" #'org-agenda)

(keymap-set prog-mode-map "C-c d" #'flymake-show-buffer-diagnostics)

(defun kill-not-scratch ()
  (interactive)
  (dolist (item (buffer-list))
    (if (not (string= "*scratch*" (buffer-name item)))
	(kill-buffer item))))


(keymap-global-set "C-c C-s" #'kill-not-scratch)

(keymap-global-unset "M-.")
(keymap-global-unset "M-,")
(keymap-global-set "C-}" #'xref-find-definitions)
(keymap-global-set "C-{" #'xref-go-back)
(keymap-global-set "C-?" #'xref-find-references)

(keymap-global-set "C-|" #'eglot-rename)

(defun line-below-start()
  (interactive)
  (move-end-of-line 1)
  (open-line 1)
  (next-line 1)
  (move-beginning-of-line 1)
  )

(defun line-above-start()
  (interactive)
  (move-beginning-of-line 1)
  (previous-line 1)
  (move-end-of-line 1)
  (open-line 1)
  (next-line 1)
  )
(keymap-global-set "C-o" #'line-below-start)
(keymap-global-set "C-S-o" #'line-above-start)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(defun mark-entire-line ()
  (interactive)
  (move-beginning-of-line 1)
  (rectangle-mark-mode)
  (move-end-of-line 1)
  )


(keymap-global-set "C-c l" #'mark-entire-line)


(global-set-key (kbd "C-c s") 'hs-show-block)
(global-set-key (kbd "C-c h") 'hs-hide-block)

(global-set-key (kbd "C-+") (lambda ()
                              (interactive)
                              (enlarge-window-horizontally 5)))

(global-set-key (kbd "C-_") (lambda ()
                              (interactive)
                              (shrink-window-horizontally 5)))

(global-set-key (kbd "C-=") (lambda ()
                              (interactive)
                              (enlarge-window 5)))

(global-set-key (kbd "C--") (lambda ()
                              (interactive)
                              (shrink-window 5)))
;; for comments
(global-set-key (kbd "M-/")  'whole-line-or-region-comment-dwim-2)

(global-set-key (kbd "M-e") 'end-of-buffer)
(global-set-key (kbd "M-a") 'beginning-of-buffer)


(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "b") 'dired-up-directory))


(provide 'keymaps)

