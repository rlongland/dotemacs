;;-------------------------------------------------------
;;; Org mode init starts here
;; The following lines are always needed.  Choose your own keys.
(require 'org)

(setq org-modules '(org-habit))

(add-to-list 'auto-mode-alist '("\\.org$'" . org-mode))


;; Shortcuts
(bind-key "C-c r" 'org-capture)
(bind-key "C-c a" 'org-agenda)
(bind-key "C-c l" 'org-store-link)
(bind-key "C-c L" 'org-insert-link-global)
(bind-key "C-c O" 'org-open-at-point-global)
(bind-key "<f9> <f9>" 'org-agenda-list)
(bind-key "<f9> <f8>" (lambda () (interactive) (org-capture nil "r")))

;; customizations
(custom-set-variables
 '(org-deadline-warning-days 14)
 '(org-agenda-show-all-dates t)
 '(org-agenda-start-on-weekday 1)
 '(org-agenga-span 14)
 '(org-agenda-skip-deadline-if-done nil)
 '(org-reverse-note-order t)
 '(org-agenda-skip-scheduled-if-done nil))

;; ---- AGENDA STUFF ------
;; Setup the agenda list
(setq org-agenda-files
      (delq nil
            (mapcar (lambda (x) (and (file-exists-p x) x))
		    '("~/project/org/gtd.org"
		      "~/project/org/work.org"))))t

(setq org-agenda-span 5)
(setq org-agenda-tags-column -100) ; take advantage of the screen width

;; Easily mark as done in agenda mode
(defun my/org-agenda-done (&optional arg)
  "Mark current TODO as done.
This changes the line at point, all other lines in the agenda referring to
the same tree node, and the headline of the tree node in the Org-mode file."
  (interactive "P")
  (org-agenda-todo "DONE"))
;; Override the key definition for org-exit
(add-hook 'org-agenda-mode-hook
   (lambda ()
     (define-key org-agenda-mode-map "x" 'my/org-agenda-done)))

(setq org-columns-default-format "%38ITEM(Details) %TAGS(Context) %7TODO(To Do) %5Effort(Time){:} %6CLOCKSUM{Total}")

;; Custom commands
(defun my/org-agenda-skip-scheduled ()
  (org-agenda-skip-entry-if 'scheduled 'deadline 'regexp "\n]+>"))
(setq org-agenda-custom-commands
      `(("2" "Bi-weekly review"
	 agenda ""
	 ((org-agenda-span 14)
	  (org-agenda-log-mode 1)))
	("u" "Unscheduled tasks" tags-todo "-someday-TODO=\"SOMEDAY\"-TODO=\"DELEGATED\"-TODO=\"WAITING\"-project"
           ((org-agenda-skip-function 'my/org-agenda-skip-scheduled)
            (org-agenda-view-columns-initially t)
	    ;;            (org-tags-exclude-from-inheritance '("project"))
	    (org-agenda-use-tag-inherisance t)
            (org-agenda-overriding-header "Unscheduled TODO entries: ")
	    ;;            (org-columns-default-format "%50ITEM %TODO %3PRIORITY %Effort{:} %TAGS")
            (org-agenda-sorting-strategy '(todo-state-up priority-down effort-up tag-up category-keep))))
	("c" todo "DONE|DEFERRED|CANCELLED" nil)
	("W" "Weekly review"
                agenda ""
                (
                 (org-agenda-span 14)
                 (org-agenda-start-on-weekday 1)))
                 ;(org-agenda-start-with-log-mode '(closed))
                 ;(org-agenda-archives-mode t)
                 ;(org-agenda-skip-function '(org-agenda-skip-entry-if 'notregexp "^\\* DONE "))))
	))

;; ---- MISC -----
;; Pomodoros
(bind-key "C-c p" 'org-pomodoro)

;; Refiling
(setq org-reverse-note-order t)
(setq org-refile-use-outline-path nil)
(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-refile-use-cache nil)
(setq org-refile-targets '(("~/project/org/gtd.org" :maxlevel . 1)
			                     ("~/project/org/someday.org" :level . 1)))
(setq org-blank-before-new-entry nil)

;; TODO states
(setq org-todo-keywords '("TODO(t)" "|" "DONE(d)" "CANCELLED(c)"))   

;; Automatically archive CANCELLED tasks
(setq org-todo-state-tags-triggers
  '(("CANCELLED" ("ARCHIVE" . t)))) 

;; Quickly make TODO items in the work.org file
(defvar my/org-basic-task-template "* TODO %^{Task}
:PROPERTIES:
:Effort: %^{effort|1:00|0:05|0:15|0:30|2:00|4:00}
:END:
Captured %<%Y-%m-%d %H:%M>
%?

%i
" "Basic task data")
(setq org-capture-templates
      `(("t" "Task" entry
         (file+headline "~/project/org/work.org" "Inbox")
         "* TODO %^{Task}\nSCHEDULED: %t\n"
           :immediate-finish t)
	      ("R" "Reaction Idea" entry
	       (file+headline "~/project/org/reactions.org" "Staging")
	       "* %^{Task}\n"
	       :immediate-finish t)
	      ("L" "Lent items" entry
	       (file+headline "~/project/org/lent.org" "Inbox")
	       "* BORROWED %^{Task}\n"
	       :immediate-finish t)))

;; Org habits
(setq org-habit-graph-column 80)
(setq org-habit-show-habits-only-for-today nil)

;; reveal.js
(require 'ox-reveal)
(setq org-reveal-root "file:///home/longland/project/Talks/reveal.js")
(setq org-reveal-mathjax t)

(use-package htmlize
  :ensure t)
;;(setq org-reveal-title-slide nil)

(add-to-list 'org-file-apps '("pdf" . "okular %s"))
