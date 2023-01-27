;; Put your personal user configuration in this file.

;; To require addional packages add them to 'package-selected-packages, e.g.
;; (add-to-list 'package-selected-packages 'ess)
;; will ensure that the ess package is installed the next time Emacs starts.

;; Don't remove this:
(unless (cl-every 'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages))


  
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; For when hl-line-mode is on
 (set-face-background 'hl-line "#f4f6f7")

 )
