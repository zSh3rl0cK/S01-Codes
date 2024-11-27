(defparameter lista1 (list 1 2 3))
(defun process(x)
  (if(>= x 4)
  (* x 2)
  (/ x 2)
  )
)

(defparameter lista1-process (mapcar #'process lista1)) ;; lista 1 processada 

(defparameter lista2(list 4 5 6)) ;; criando a lista 2

(defparameter list2-process (mapcar #'process lista2)) ;; lista 2 proceessada

(defparameter lista-concatenada (append lista1-process lista2-process)) ;;unificando as listas

(print lista-concatenada)
