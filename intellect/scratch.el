(progn
  (set-mark (search-forward "king"))
  (delete-char -1))

(find-file "/home/egor/CommonLisp/hello.el")

(defun dolly-work-in-css () "Долорес работает с текстом"
       (interactive)
       (find-file "/home/egor/CommonLisp/hello.php")
       (beginning-of-buffer)
       (search-forward "public $css")
       (move-end-of-line 2)
       (newline 1)
       (dolores-paste-css)
       (set-mark (search-backward "href="))
       (move-beginning-of-line 1)
       (backward-delete-char-untabify 1)
       (move-end-of-line 1)
       (delete-char -1)
       (insert "\",")
       (move-beginning-of-line 1)
       (delete-char 5)
       (move-end-of-line 2))

(defun dolly-work-in-js () "Долорес работает с js"
       (interactive)
       (find-file "/home/egor/CommonLisp/hello.php")
       (beginning-of-buffer)
       (search-forward "public $js")
       (move-beginning-of-line 2)
       (newline)
       (previous-line)
       (insert-register ?2)
       (set-mark (search-forward "script src="))
       (move-beginning-of-line 1)
       (backward-delete-char-untabify 1)
       (search-forward ">")
       (backward-char 1)
       (kill-line)
       (insert ",")
       (newline))

(dolly-work-in-text)

(defun dolly-makes-landing (ACTION) "Долорес делает посадку шаблона - функция состоит из других функций"
       (interactive "s")
					;(dolores-search-css)(dolly-work-in-text)
       (let ((action ACTION))
	 (if (string= action "css")
	     (progn
	       (dolores-search-css)
	       (dolly-work-in-css)))
	 (if (string= action "js")
	     (progn
	       (dolores-search-js)
	       (dolly-work-in-js)))
	 (message "dolly work in nothing...")))



(dolly-makes-landing "css")



(defun new-card (SUIT) (interactive)
       (let ((suit SUIT))
	 (if (string= suit "jacke")
	     (message "card is jacke")
	   (message "card is not jacke"))))

(new-card "queen")




(defun dolores-search-css () "долорес делает посадку шаблона на движок yii2 - ищет нужное место и вставляет это в активный assetbundle"
       (interactive)
       (let ($arg1 $arg2)
	 (search-forward "rel=\"stylesheet\"")
	 (if (region-active-p)
	     (progn (setq $arg1 (region-beginning))
		    (setq $arg2 (region-end)))
	   (progn (setq $arg1 (line-beginning-position))
		  (setq $arg2 (line-end-position))))
	 (copy-to-register ?1 $arg1 $arg2)))

(dolores-search-css)


(defun dolores-search-js () "Долорес ищет все скрипты джаваскрипта копирует их в регистер"
       (interactive)
       (let ($arg1 $arg2)
	 (search-forward "script src=")
	 (if (region-active-p)
	     (progn (setq $arg1 (region-beginning))
		    (setq $arg2 (region-end)))
	   (progn (setq $arg1 (line-beginning-position))
		  (setq $arg2 (line-end-position))))
	 (copy-to-register ?2 $arg1 $arg2)))


(defun dolores-paste-css () "Долорес вставляет выделенный найденный участок текста css источника"
       (interactive)
       (when (use-region-p)
	 (delete-region (region-beginning) (region-end)))
       (insert-register ?1 t))

(defun dolores-paste-js () "Долорес вставялет выделенный найденный участок тектса джаваскрипт источника"
       (interactive)
       (when (use-region-p)
	 (delete-region (region-beginning) (region-end)))
       (insert-register ?2))

(let ((default-directory "/home/egor/CommonLisp/"))
  (shell-command-to-string ">hello.el; echo \"hello world\">hello.el"))

(find-file "/home/egor/CommonLisp/hello.el")


(defun copy-to-register-1 ()
  "copy curretn line or text selection to register 1.
seel also xah-paster-from-register-1 copy to register"
  (interactive)
  (let ($p1 $p2)
    (search-forward "link rel=\"stylesheet\"")
    (if (region-active-p)
	(progn (setq $p1 (region-beginning))
	       (setq $p2 (region-end)))
      (progn (setq $p1 (line-beginning-position))
	     (setq $p2 (line-end-position))))
    (copy-to-register ?1 $p1 $p2)
    (message "Copied to register 1: %s."
	     (buffer-substring-no-properties $p1 $p2))))

(defun paste-from-register-1 ()
  "Paste text from register 1."
  (interactive)
  (when (use-region-p)
    (delete-region (region-beginning) (region-end)))
  (insert-register ?1 t))

(paste-from-register-1)






