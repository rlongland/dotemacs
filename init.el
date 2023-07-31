(require 'org)
(org-babel-load-file
 (expand-file-name "myinit.org"
                   user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-adapt-indentation t)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done nil)
 '(org-agenda-skip-scheduled-if-done nil)
 '(org-agenda-start-on-weekday 1)
 '(org-agenga-span 14)
 '(org-deadline-warning-days 14)
 '(org-latex-prefer-user-labels t)
 '(org-reverse-note-order t)
 '(package-selected-packages
	 '(citar-latex compat html2org consult corfu zenburn-theme yasnippet-snippets yaml-mode windresize which-key wgrep web-mode vterm-toggle visual-regexp visual-fill-column vertico use-package untitled-new-buffer unfill undo-tree solarized-theme smooth-scroll smex rotate rectangle-utils rainbow-delimiters quelpa poly-R poetry perspective pdf-tools pandoc-mode ox-spectacle ox-reveal ox-clip outline-magic org-roam-bibtex org-ref org-ql org-present org-contrib org-bullets org-attach-screenshot orderless ob-julia-vterm ob-ess-julia nyan-mode nano-theme nano-modeline multiple-cursors multi-term moody modus-themes minions mastodon marginalia magit lsp-ui lsp-treemacs lsp-julia jupyter julia-snail julia-repl ivy-hydra ivy-bibtex howdoi green-is-the-new-black-theme good-scroll flycheck flx-ido flatland-theme flatland-black-theme exec-path-from-shell eval-in-repl epc emojify embark-consult ein eglot ebib dumb-jump dracula-theme doom-themes doom-modeline dired-hide-dotfiles diff-hl dictionary counsel conda company-math command-log-mode code-cells citar-org-roam citar-embark cdlatex burly better-defaults auctex anzu ample-theme all-the-icons-dired all-the-icons-completion adaptive-wrap)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
