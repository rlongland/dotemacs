(require 'org)
(org-babel-load-file
 (expand-file-name "myinit.org"
                   user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
	 '("e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" default))
 '(org-adapt-indentation t)
 '(org-agenda-files
	 '("/home/longland/project/org/gtd.org" "/home/longland/project/org/work.org"))
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done nil)
 '(org-agenda-skip-scheduled-if-done nil)
 '(org-agenda-start-on-weekday 1)
 '(org-agenga-span 14)
 '(org-deadline-warning-days 14)
 '(org-latex-prefer-user-labels t)
 '(org-reverse-note-order t)
 '(package-selected-packages
	 '(moody perspective org-ql org-contrib ox-taskjuggler burly dired-hide-dotfiles all-the-icons-dired 0blayout ox-clip good-scroll julia-vterm yasnippets-snippets yasnippets-snuppets yasnippets org-ref org oc-biblatex ox-spectacle org-present rainbow-delimiters nano-modeline nano-theme consult embark marginalia vertico zenburn-theme yasnippet-snippets yaml-mode windresize which-key wgrep web-mode vterm-toggle visual-regexp use-package untitled-new-buffer unfill undo-tree solarized-theme smooth-scroll smex rotate quelpa poly-R poetry pdf-tools pandoc-mode ox-reveal ox-pandoc outline-magic org-bullets ob-julia-vterm ob-ess-julia nyan-mode multiple-cursors multi-term minions magit lsp-ui lsp-treemacs lsp-julia jupyter julia-snail julia-repl ivy-hydra ivy-bibtex howdoi green-is-the-new-black-theme flycheck flx-ido flatland-theme flatland-black-theme exec-path-from-shell eval-in-repl epc ein eglot dumb-jump dracula-theme doom-modeline diff-hl dictionary counsel conda company-math command-log-mode better-defaults auctex anzu ample-theme all-the-icons adaptive-wrap))
 '(safe-local-variable-values
	 '((eval add-to-list 'org-latex-classes
					 '("epj-svjour" "%%%%%%%%%%%%%%%%%%%%%%%% epj-svjour %%%%%%%%%%%%%%%%%%%%%%%%%%
%
\\begin{filecontents}{leer.eps}
%!PS-Adobe-2.0 EPSF-2.0
%%CreationDate: Mon Jul 13 16:51:17 1992
%%DocumentFonts: (atend)
%%Pages: 0 1
%%BoundingBox: 72 31 601 342
%%EndComments

gsave
72 31 moveto
72 342 lineto
601 342 lineto
601 31 lineto
72 31 lineto
showpage
grestore
%%Trailer
%%DocumentFonts: Helvetica
\\end{filecontents}
%
\\documentclass[epj]{svjour}
 [NO-DEFAULT-PACKAGES]
 [PACKAGES]
 [EXTRA]"
						 ("\\section{%s}" . "\\section*{%s}")
						 ("\\subsection{%s}" . "\\subsection*{%s}")
						 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
						 ("\\paragraph{%s}" . "\\paragraph*{%s}")
						 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
		 (eval add-to-list 'org-latex-classes
					 '("jinst" "%%%%%%%%%%%%%%%%%%%%%%%% jinst %%%%%%%%%%%%%%%%%%%%%%%%%%
%
\\documentclass[letterpaper,11pt]{article}
 [NO-DEFAULT-PACKAGES]
 [PACKAGES]
 [EXTRA]"
						 ("\\section{%s}" . "\\section*{%s}")
						 ("\\subsection{%s}" . "\\subsection*{%s}")
						 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
						 ("\\paragraph{%s}" . "\\paragraph*{%s}")
						 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
		 (org-latex-hyperref-template)
		 (eval require 'ox-publish)
		 (eval require 'ox)
		 (eval require 'cl-lib)
		 (org-babel-noweb-wrap-end . "»")
		 (org-babel-noweb-wrap-start . "«")
		 (org-confirm-babel-evaluate))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
