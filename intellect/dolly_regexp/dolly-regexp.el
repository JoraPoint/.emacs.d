;;;долли найди мне все биржевые котировки
(defun dolly-trader () "долли ищет все биржевые котировки"
       (interactive)
       (eww-open-file "https://ilmiojelato.com/backend/web/index.php"))

;;(eww-open-file "https://finviz.com")

;;(defun dolly-find-next-double-word () "move to next doubled word, ignoring <...> tags"
;;       (re-search-forward "\\<\\ ([a-z]+\\)\\([\n\t]\\|<[^>]+>\\)+\\1\\>")

"\\(pattern\\)"

\([-A-Za-z]+\)

(re-search-forward "<img src=\"\\([^\"]+?\\)\"" )

(progn
  (re-search-forward "<img src=\"[-A-z]+")
  (set-mark-command nil)
  (re-search-backward "\"")
  (skip-chars-forward "\"")
  (dolly-light)
  (setq mark-deactivate t))



<img src="Dhello-World.png">

(re-search-forward "\\(\([-A-Za-z]+\)\\)")

(re-search-forward "\\([A-Za-z]+\\)")

(defun test-fun (str)
  (let ((ss (replace-regexp-in-string "[ ]+" "" str)))
    (message ss)))

(test-fun "jac   k   e")

(defun dolly-kill-space (string)
  (let ((letter (replace-regexp-in-string "dolly" "Dolores" string)))
    (insert (message letter))))

(dolly-kill-space "dolly")

jacke queen jacke king jacke dolly jacke


;;;Dolly search any sequence number

(save-excursion
  (re-search-forward "[$a-z]+")
  (set-mark-command nil)
  (re-search-backward "[^a-z]+")
  (dolly-light)
  (setq mark-deactivate t)
  (message "what is your name?"))

(defun dolly-say-your-name () "dolly talk about your name"
       (save-excursion
       (re-search-forward "\(\jacke|queen\)\\")
       (set-mark-command nil)
       (re-search-backward "\\(jacke|queen\\)\\")
       (dolly-light)
       (setq mark-deactivate t)))


(dolly-say-your-name)

(re-search-forward "jacke\\|\\queen\\|\\king\\|\\dolly")

(while (re-search-forward "\\<jacke?\\|\\<queen\\|\\<king\\|\\<dolly" nil t)
  (skip-chars-backward "jacke\\|\\queen\\|\\king\\|\\dolly")
  (insert "Black")
  (skip-chars-forward "jacke\\|\\queen\\|\\king\\|\\dolly"))



blackdolly
blackking
blackqueen
blacjacke
Blackdolly
mega
Blackking
Blackqueen
Blackjacke
Blackjack
Blackjackson

(re-search-forward "\\($\\|  \\|  \\)")

(re-search-forward "\\(jacke\\|queen\\)\\(blackJacke\\|\\blackQueen)\\")

(re-search-forward "\"\\([^\"]+?\\)\"")


  


