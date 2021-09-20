;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;моя программа для акции покупки от уровня и продажи от уровня
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun discition-stock (price-action level-action) (interactive)
       (let ((MICROSOFT price-action)
	     (LEVEL-MICROSOFT level-action))
	 (if (> MICROSOFT LEVEL-MICROSOFT)
	     (message "продаю")
	   (message "покупаю"))))




(setq цена-акции 100)

(setq уровень 101)

(let ((GOOGLE цена-акции)
      (LEVEL-GOOGLE уровень))
  (if (> GOOGLE LEVEL-GOOGLE)
      (message "продаю")
    (message "покупаю")))

(let ((GOOGLE цена-акции)
      (LEVEL-GOOGLE уровень))
  (if (> GOOGLE LEVEL-GOOGLE)
      (message "продаю")
    (message "покупаю")))

(defun level-stock (цена-акции уровень) (interactive)
(let ((GOOGLE цена-акции)
      (LEVEL-GOOGLE уровень))
  (if (> GOOGLE LEVEL-GOOGLE)
      (message "продаю")
    (message "покупаю"))))

(level-stock 220 240)



(defun example (что-хотим-заменить) "начинаю делать робота для посадки верстки на движок yii2" (interactive)
       (let ((искомый-элемент что-хотим-заменить))
	 (if (= искомый-элемент "rel='"stylesheet" href='"))))



(search-forward "rel='stylesheet'")

(insert (message "rel='stylesheet'"))

(insert (message "'hello'"))

(insert (message "\"hello\""))

(defun level-stock (цена-акции уровень) (interactive)
       (let ((GOOGLE цена-акции)
       (if (> GOOGLE LEVEL-GOOGLE)
	   (message "продаю")
	 (message "покупаю")))))

(level-stock 100 101)



;;; переключатель находится в двух режимах - если истина то регистры домашние если путсота - то регистры далеких баз

(setq jump-local t)


(let ((jump jump-local))
  (if (equal jump t)
      (load "/root/.emacs.d/registers/home.el")
    (message "/root/.emacs.d/registers/lesson.el")))



(defun dolly-trade () "dolly trader"
       (interactive)
       (beginning-of-buffer)
       ;; регулярное выражение для всех биржевых котировок
       (while (re-search-forward "[a-zA-Z]{1,5}")))

(re-search-forward "c[ad]\\{1,2\\}r")

cadr cadrr  cdr

