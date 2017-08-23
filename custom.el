;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Basis emacs configuration to be used in conjunction with prelude
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  key bindings
;
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
(global-set-key "\C-c;" 'comment-or-uncomment-region)
(global-set-key "\M-=" 'align-equals)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Windows settings
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq delete-by-moving-to-trash t)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Orgmode
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;Latex;;;;;

;creates beamer class file
(require 'ox-latex)
(setq org-latex-listings t)


(add-to-list 'org-latex-classes
             '("report"
               "\\documentclass\{report\}
               \\pagestyle{fancy}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Python
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'virtualenvwrapper)
(setq venv-location "~/Envs")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                        ; Yasnippet mode
                                        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/yasnippets")
(require 'yasnippet)
(yas-global-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(conda-anaconda-home "c:/Users/jmros/anaconda3")
 '(doc-view-continuous t)
 '(org-html-head-include-default-style nil)
 '(org-html-head-include-scripts nil)
 '(package-selected-packages
   (quote
    (org langtool ghc ghci-completion flycheck-ghcmod flycheck-haskell flymake-haskell-multi haskell-emacs-text haskell-snippets haskell-tab-indent flycheck-elm ac-helm elm-mode elm-yasnippets yaml-mode conda auto-org-md ace-flyspell flyspell-correct 0blayout helm-ispell ac-ispell simple-httpd pandoc-mode ac-anaconda anaconda-mode powershell auto-complete zop-to-char zenburn-theme yari which-key web-mode volatile-highlights virtualenvwrapper undo-tree smex smartrep smartparens smart-mode-line scss-mode ruby-tools rainbow-mode rainbow-delimiters ov operate-on-number move-text markdown-mode magit json-mode js2-mode inf-ruby imenu-anywhere ido-ubiquitous helm-projectile helm-descbinds helm-ag guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck flx-ido expand-region ess elisp-slime-nav easy-kill discover-my-major diminish diff-hl csv-nav csv-mode crux company-auctex company-anaconda cdlatex browse-kill-ring beacon anzu ace-window)))
 '(safe-local-variable-values
   (quote
    ((eval setq org-emphasis-regexp-components
           (quote
            (" 	('\"{" "- 	.,:!?;'\")}\\" " 	
,\"'" "." 10)))
     (eval load-file "./elisp/publishing.el")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ispell
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default ispell-program-name "C:/Program Files (x86)/Aspell/bin/aspell.exe")
(setq text-mode-hook '(lambda() (flyspell-mode t) ))
(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-previous-word-generic)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; sets default to home directory
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq default-directory "~")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Elm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-elm-setup))

(setq elm-format-on-save t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; languagetool
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq langtool-language-tool-jar "c:/ProgramData/chocolatey/lib/languagetool/tools/LanguageTool-3.8/languagetool-commandline.jar")

;;hotkeys
(global-set-key "\C-x4w" 'langtool-check)
(global-set-key "\C-x4W" 'langtool-check-done)
(global-set-key "\C-x4l" 'langtool-switch-default-language)
(global-set-key "\C-x44" 'langtool-show-message-at-point)
(global-set-key "\C-x4c" 'langtool-correct-buffer)
