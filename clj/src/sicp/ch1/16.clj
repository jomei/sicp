(ns sicp.ch1.16)

(defn square [n]
  (* n n))

(defn fast-expt
  [b n]
  (cond (= n 0) 1
        (even? n) (square (fast-expt b (/ n 2)))
        :else (* b (fast-expt b (- n 1)))
        ))
