;;; MELPA package manger ;;;
;; (https://github.com/milkypostman/melpa) for installation and compatability 


;; Apple specific key binding
;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
 ;(setq mac-option-modifier 'alt)
 ;(setq mac-command-modifier 'meta)
 (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
 )


;ESS Emacs Speaks Statistics (ESS) is an add-on package for emacs text editors such as GNU Emacs and XEmacs.
;(require 'package)
(add-to-list 'load-path ".emacs.d/ESS/lisp/")
(require 'ess-site)

;;; open todo list when emacs opens ;;;
;;(find-file "/Volumes/Main External SSD/Private Code Repos/journal/fall_15.org")

(require 'package)
(setq package-archives '(("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))

			       
;;(require 'magit)
;;(global-set-key (kbd "C-x g") 'magit-status)


(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

                                                                                                                                     
;; -*- emacs-lisp -*-
(unless package-archive-contents    ;; Refresh the packages descriptions
  (package-refresh-contents))
(setq package-load-list '(all))     ;; List of packages to load
(unless (package-installed-p 'org)  ;; Make sure the Org package is
  (package-install 'org))           ;; installed, install it if not
(package-initialize)                ;; Initialize & Install Package
;; (setq org-...)                   ;; Your custom settings


;;; setting home directory path ;;;
(setq load-path (cons "/home/jasonrich/bin/emacs" load-path))



;;; max-min window height and width ;;;
(setq max-mini-window-height 2.5)
;;(inisetq resize-mini-windows t)


;;; markdown mode (not poly) ;;; 
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)



(add-to-list 'load-path "~/.emacs.d/sublimity")
(require 'sublimity)
;; (require 'sublimity-scroll)
;; (require 'sublimity-map)
;; (require 'sublimity-attractive)

(sublimity-mode 1)
(setq sublimity-scroll-weight 10
      sublimity-scroll-drift-length 5)
(setq sublimity-scroll-weight 5
      sublimity-scroll-drift-length 10)
(setq sublimity-map-size 20)
(setq sublimity-map-fraction 0.3)
(setq sublimity-map-text-scale -7)


(add-hook 'sublimity-map-setup-hook
	  (lambda ()
	    (setq buffer-face-mode-face '(:family "Monospace"))
	    (buffer-face-mode)))

(setq sublimity-attractive-centering-width 110)

;;(sublimity-attractive-hide-bars)
;;(sublimity-attractive-hide-vertical-border)
;;(sublimity-attractive-hide-fringes)
;;(sublimity-attractive-hide-modelines)


;;
;; Modes for selected file types
;;

(add-to-list 'auto-mode-alist '("//.texc$" . latex-mode))
(add-to-list 'auto-mode-alist '("//.texcj$" . latex-mode))
(add-to-list 'auto-mode-alist '("//.texj$" . latex-mode))
(add-to-list 'auto-mode-alist '("//.pl$" . cperl-mode))
(add-to-list 'auto-mode-alist '("//.pm$" . cperl-mode))
(add-to-list 'auto-mode-alist '("//.cgi$" . cperl-mode))
(add-to-list 'auto-mode-alist '("//.cpp$" . c++-mode))
(add-to-list 'auto-mode-alist '("//.h$" . c++-mode))
(add-to-list 'auto-mode-alist '("//.book$" . nxml-mode))
(add-to-list 'auto-mode-alist '("//.faq$" . nxml-mode))
(add-to-list 'auto-mode-alist '("//.xmap$" . nxml-mode))
(add-to-list 'auto-mode-alist  '("//.dbk$" . nxml-mode))
(add-to-list 'auto-mode-alist  '("//.lesson$" . nxml-mode))
(add-to-list 'auto-mode-alist  '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist  '("\\.md$" . markdown-mode))
;;; POLY MARKDOWN add-to-alist ;;;
(add-to-list 'auto-mode-alist '("//.md" . poly-markdown-mode))

;;; R MODES add-to-list ;;;
(add-to-list 'auto-mode-alist '("//.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("//.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("//.Rmd" . poly-markdown+r-mode))

;;; OSX specific key bindings

;;; enconding settings 
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;; modifier and key bindings
;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'capslock)
  (setq mac-control-modifier 'control)
  (setq mac-capslock-modifer 'command)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )

;;; org-mode directory and path ;;;
;;(add-to-list 'load-path "~/path/to/orgdir/lisp")
;;(add-to-list 'load-path "~/path/to/orgdir/contrib/lisp" t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)



;; org-mode setting ;;;
(setq org-crt-k-protect-subtree 1) ;; to prevent losing work
(setq org-catch-invisible-edits 'show)
(setq org-agenda-include-diary t);;include entries from the Emacs diary into Org mode agenda



;;; evil-mode ;;;
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)


;; turn-on flyspell
;; http://superuser.com/questions/695096/how-to-enable-flyspell-in-org-mode-by-default
;; (flyspell-mode 1) ;; not sure why this doesn't work yet
(add-hook 'org-mode-hook 'turn-on-flyspell)

;;; abbreviations ;;;
(setq-default abbrev-mode 1)

;;; turn-on line numbers ;;;
(global-linum-mode 1) ;; line numbers on the leftside of the screen
(line-number-mode 1) ;; line numbers in the mini-buffer
(column-number-mode 1) ;; line numbers in the mini-buffer



;;; org-mode key binding for agenda ;;;
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


;; POLY MARKDOWN add-to-alist ;;;                                                                                                                                       
;; evil-org-mode ;;;
;; vim key bindings for org mode functions
;; https://github.com/edwto/evil-org-mode/issues
;; Requirements  
;; org-mode, git://repo.or.cz/org-mode.git
;; evil-mode, git://gitorious.org/evil
;; evil-leader, git://github.com/cofi/evil-leader.git
(require 'evil-org)


;;; evil-leader ;;;
;; Provides leader key to create user defined key binding sequences.

;; Known Bugs:
;; See http://github.com/cofi/evil-leader/issues
;; 
;; Install 
(require 'evil-leader) 

;; Usage
(global-evil-leader-mode)
;;
;;    to enable `evil-leader' in every buffer where `evil' is enabled.
;;
;;    Note: You should enable `global-evil-leader-mode' before you enable
;;          `evil-mode', otherwise `evil-leader' won't be enabled in initial
;;          buffers (*scratch*, *Messages*, ...).
;;
;;    Use `evil-leader/set-key' to bind keys in the leader map.
;;    For example:
;;
;; (evil-leader/set-key "e" 'find-file)
;;
;;    You can also bind several keys at once:
;;
;; (evil-leader/set-key
;;   "e" 'find-file
;;   "b" 'switch-to-buffer
;;   "k" 'kill-buffer)
;;
;;    The key map can of course be filled in several places.
;;
;;    After you set up the key map you can access the bindings by pressing =<leader>=
;;    (default: \) and the key(s). E.g. \ e would call `find-file' to open a file.
;;
;;    If you wish to change so you can customize =evil-leader/leader= or call
;;    `evil-leader/set-leader', e.g. (evil-leader/set-leader ",") to change it to
;;    ",".
;;    The leader has to be readable by `read-kbd-macro', so using Space as a
;;    prefix key would be (evil-leader/set-leader "<SPC>").
;;
;;    Beginning with version 0.3 evil-leader has support for mode-local bindings:
;;
;; (evil-leader/set-key-for-mode 'emacs-lisp-mode "b" 'byte-compile-file)
;;
;;    Again, you can bind several keys at once.
;;
;;    A mode-local binding shadows a normal mode-independent binding.

;; evil-org key bindings
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer)

;;; poly-mode settings and requirments ;;;
(setq load-path
      (append '("~/polymode/"  "~/polymode/modes")
	      load-path))

(require 'poly-R)
(require 'poly-markdown)




;;
;;  Utility functions
;;
(defun toggle-case-sensitivity ()
  "Switch from case-sentitive to case-insensitive searches, and back again."
  (interactive)
  (if case-fold-search
      (progn
	(setq case-fold-search nil)
	(message "Searches will be case sensitive." ())
	)
      (progn
	(setq case-fold-search t)
	(message "Searches will ignore case." ())
	)
      ))
(setq-default case-fold-search nil)


(setq coding-toggle nil)
(defun toggle-line-end-coding ()
  "Switch from DOS line ends (\r\n) to Unix (\n) and back again"
  (interactive)
  (if coding-toggle
      (progn
	(set-buffer-file-coding-system `iso-latin-1-unix)
	(setq coding-toggle nil)
	(message "Use unix line endings." ())
	)
      (progn
	(set-buffer-file-coding-system `iso-latin-1-dos)
	(setq coding-toggle t)
	(message "Use dos line endings." ())
	)
      ))


(defun dollar-pair ()
  "Insert $$ and position point between them (useful when typing LaTeX documents)"
           (interactive)
           (insert "$$")
           (backward-char 1))
(defun bracket-pair ()
  "Insert {} and position point between them"
           (interactive)
           (insert "{}")
           (backward-char 1))

(defun cdata ()
  "Insert an XML CDATA bracket and position point within it"
           (interactive)
           (insert "<![CDATA[]]>")
           (backward-char 3))



(defun use-big-font (fontSize)
  (interactive "P")
;  (set-default-font (concat "-b&h-Luxi Mono-bold-r-normal--" 
					;    (if fontSize 
					;(number-to-string fontSize)
					;      "32")
					;    "-*-*-*-m-0-iso8859-1"))
;  (set-default-font "-*-Courier New-bold-r-*-*-35-262-*-*-c-*-*-ansi-")
;
;  (set-default-font (concat "-*-lucidatypewriter-bold-r-normal-*-"
  (set-default-font (concat "-adobe-helvetica-bold-r-normal--" 
			        (if fontSize 
				    (number-to-string fontSize)
				        "34")
				    "-*-*-*-*-*-iso8859-1"))
  (setq truncate-lines 1)
  (set-background-color "light cyan")
  )




;
; Customizing global emacs behavior
;






;; When running ispell, consider all 1-3 character words as correct.
(setq ispell-extra-args '("-W" "2"))

;;; pending-delete-mode causes typed text to replace a selection,
;;; rather than append -- standard behavior under all window systems
;;; nowadays.

(pending-delete-mode 1)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;               Change Some Aspects of GUI Appearance              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                      Changing the Modeline                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(line-number-mode 1)
(column-number-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;
; Customization
;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq line-move-visual nil)

;;;;;;;;;;;;;;
; C,C++ mode
;;;;;;;;;;;;;;

(setq c-recognize-knr-p nil)

(add-hook 'c-mode-hook
	    (lambda ()
	          (setq c-basic-offset 4)
		      (setq c-auto-newline t)
		          )
	      )

(setq text-mode-hook
      '(lambda ()
         (auto-fill-mode 1)
         (flyspell-mode)
))




;;; ********************
;;; Font-Lock is a syntax-highlighting package.  When it is enabled and you
;;; are editing a program, different parts of your program will appear in
;;; different fonts or colors.  
;;;
;;; The "Options" menu has some commands for controlling this as well.
;;;

(require 'font-lock)
(setq font-lock-maximum-decoration t)
;(add-hook 'font-lock-mode-hook 'turn-on-lazy-lock)
(setq lazy-lock-stealth-time 30)


    (global-font-lock-mode t)





;
;  Some convenience commands for typing course slides in LaTeX
; 
(fset 'begin-itemize
      [?\\ ?b ?e ?g ?i ?n ?{ ?i ?t ?e ?m ?i ?z ?e ?} return ?\\ ?i ?t ?e ?m ? ])

(fset 'next-item
      [return ?\\ ?i ?t ?e ?m ? ])


(setq tex-mode-hook
      '(lambda ()
	  (auto-fill-mode 1)
	   (flyspell-mode)
	    (define-key tex-mode-map "\C-ci" 'begin-itemize)
	     (define-key tex-mode-map "\C-c\C-i" 'begin-itemize)
	      (define-key esc-map "\C-m" 'next-item)
	      ))



;; XSL mode
(autoload 'xsl-mode "xslide" "Major mode for XSL stylesheets." t)

;; Turn on font lock when in XSL mode
(add-hook 'xsl-mode-hook
	    'turn-on-font-lock)

(setq auto-mode-alist
      (append
       (list
	'("\\.fo" . xsl-mode)
	'("\\.xsl" . xsl-mode))
       auto-mode-alist))

;; Uncomment if using abbreviations
(abbrev-mode t)



;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Remapping keys
;;;;;;;;;;;;;;;;;;;;;;;;;;


(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)

(global-set-key [f1] 'advertised-undo) ;; Undo
(global-set-key [f2] 'toggle-case-sensitivity); F2
(global-set-key [f3] 'dollar-pair); F3
(global-set-key [f4] 'bracket-pair); F4

(global-set-key [f5] 'next-error) ;; C-x `

(global-set-key [f6] 'flyspell-mode); F6
(global-set-key [f7] 'cdata); F7
(global-set-key "\C-x," 'flyspell-goto-next-error)

(global-set-key [f8] 'xsl-comment-region); F8



(global-set-key [S-x] 'kill-primary-selection) ;; Cut
(global-set-key [S-c] 'copy-primary-selection) ;; Copy
(global-set-key [S-v] 'yank-clipboard-selection) ;; Paste

(global-set-key [f9] 'toggle-line-end-coding); F3


(global-set-key "\C-c%" 'query-replace-regexp)
(global-set-key "\C-z" 'goto-line)

;;
;; Yet another way to set the mark, because some telnet programs
;; (e.g., Windows' buuilt-in telnet) won't send C-[spc] and C-@
(global-set-key "\M-\\" 'set-mark-command)





(defun quick-replace (from to)
  (goto-char (point-min))
  (while (search-forward from nil t)
    (replace-match to nil t))
)


(defun xsl-comment-region ()
  (interactive)
  (save-excursion
    (save-restriction
      (narrow-to-region (point) (mark))
      (quick-replace "-[8]-"  "-[9]-") 
      (quick-replace "-[7]-"  "-[8]-") 
      (quick-replace "-[6]-"  "-[7]-") 
      (quick-replace "-[5]-"  "-[6]-") 
      (quick-replace "-[4]-"  "-[5]-") 
      (quick-replace "-[3]-"  "-[4]-") 
      (quick-replace "-[2]-"  "-[3]-") 
      (quick-replace "-[1]-"  "-[2]-") 
      (quick-replace "--"  "-[1]-") 
      (goto-char (point-min))
      (insert "<!--")
      (goto-char (point-max))
      (insert "-->")
      )
    )
)


(defun xsl-uncomment-region ()
  (interactive)
  (save-excursion
    (save-restriction
      (narrow-to-region (point) (mark))
      (quick-replace "<!--"  "") 
      (quick-replace "-->"  "") 
      (quick-replace "-[1]-"  "--") 
      (quick-replace "-[2]-"  "-[1]-") 
      (quick-replace "-[3]-"  "-[2]-") 
      (quick-replace "-[4]-"  "-[3]-") 
      (quick-replace "-[5]-"  "-[4]-") 
      (quick-replace "-[6]-"  "-[5]-") 
      (quick-replace "-[7]-"  "-[6]-") 
      (quick-replace "-[8]-"  "-[7]-") 
      (quick-replace "-[9]-"  "-[8]-") 
      )
    )
)


(setq completion-auto-help t)
(setq track-eol nil)


;(autoload 'vm "vm.elc" nil t)

(put 'downcase-region 'disabled nil)

(put 'narrow-to-region 'disabled nil)



;;; Text-ify HTML code
(defun textify-html ()
  (interactive)
  (save-excursion
    (while (search-forward "&" nil t)
      (replace-match "&amp;" t t)))
  (save-excursion
    (while (search-forward "<" nil t)
      (replace-match "&lt;" t t)))
  (save-excursion
    (while (re-search-forward "\\(\\sw\\)>" nil t)
      (replace-match "\\1&gt;" t nil)))
  )


(defun ttnSize (fontSize)
  "go to Teletechnet viewing mode"
  (interactive "P")
  (require 'font-menu)
  (font-menu-set-font "Arial Black" nil
		            (if fontSize fontSize 24))
  (set-specifier default-toolbar-visible-p nil)
  (set-specifier default-gutter-visible-p nil)
)

;; Timestamp XML files (inside <date> </date> elements)
(defun timestamp-xml ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
ø1    (if (search-forward "<date>" nil t)
	(let ((start (point)))
	      (if (search-forward "</date>" nil t)
		        (progn
			  (delete-region start (point))
			  (insert (current-time-string))
			  (insert "</date>")
			  )
		          )
	            )
      )
    )
  )

;; For finding pesky characters
(defun find-first-non-ascii-char ()
  "Find the first non-ascii character from point onwards."
  (interactive)
  (let (point)
    (save-excursion
      (setq point
            (catch 'non-ascii
              (while (not (eobp))
                (or (eq (char-charset (following-char))
                        'ascii)
                    (throw 'non-ascii (point)))
                (forward-char 1)))))
    (if point
        (goto-char point)
        (message "No non-ascii characters."))))


(fset 'extract-code-to-file
   [?\C-r ?\{ ?\C-m right ?\C-  ?\C-s ?\} ?\C-m left escape ?w ?\C-x ?o ?\C-x ?\C-f ?\C-y return ?\C-x ?o ?\C-s ?v ?e ?r ?b ?a ?t ?i ?m ?\} ?\C-m right ?\C-  ?\C-s ?\C-s C-left left left left left left ?\C-w ?\C-x ?o ?\C-y ?\C-x ?\C-s ?\C-x ?o up ?\C-k ?\C-k ?\C-k])



(global-set-key "\C-ct" 'timestamp-xml)
(fset 'examcode
   [?\C-x ?n ?n 
    escape ?< escape ?x ?r ?e ?p ?l tab ?s ?t ?r ?i ?n ?g return ?& return ?& ?a ?m ?p ?\; return 
escape ?< escape ?x ?r ?e ?p ?l tab ?s ?t ?r ?i ?n ?g return ?< return ?& ?l ?t ?\; return 
escape ?< escape ?x ?r ?e ?p ?l tab ?s ?t ?r ?i ?n ?g return ?> return ?& ?g ?t ?\; return 
?\[ ?H ?T ?M ?L ?\] ?< ?p ?r ?e ?> escape ?> ?< ?/ ?p ?r ?e ?> ?\[ ?/ ?H ?T ?M ?L ?\] escape ?< escape ?% ?\C-q ?\C-j return ?< ?b ?r ?/ ?> ?\C-q ?\C-j return ?! ?\C-x ?n ?w])


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(load-home-init-file t t)
 '(org-agenda-files
   (quote
	("/Volumes/Main External SSD/Private Code Repos/journal/fall_15.org")))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




