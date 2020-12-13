(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Monospace-13"))

;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

(setq-default c-basic-offset 4)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
    ("b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "94a94c957cf4a3f8db5f12a7b7e8f3e68f686d76ae8ed6b82bd09f6e6430a32c" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" "6ebdb33507c7db94b28d7787f802f38ac8d2b8cd08506797b3af6cdfd80632e0" "7ea491e912d419e6d4be9a339876293fff5c8d13f6e84e9f75388063b5f794d6" default)))
 '(package-selected-packages
   (quote
    (tmux-pane dark-souls terminal-toggle terminal-here company cyberpunk-theme spacemacs-theme cyberpunk-2019-theme dracula-theme tramp-theme modus-operandi-theme ##))))

;;(add-hook 'text-mode-hook
;;      (lambda() (setq indent-line-function 'insert-tab)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(load-theme 'cyberpunk)

(add-hook 'after-init-hook 'global-company-mode)
