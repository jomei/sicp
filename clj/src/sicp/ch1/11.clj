(ns sicp.ch1.11)

(defn recur-fn [n]
  (if (< n 3)
    n
    (+ (recur-fn (- n 1))
       (recur-fn (- n 2))
       (recur-fn (- n 3)))))

(recur-fn 1)
(recur-fn 5)

(defn iter [c b a count]
  "a : -1
   b : -2
   c : -3"
  (if (= count 0)
    a
    (iter (+ a b c) c b (- count 1))))

(defn iter-fn [n]
  (if (< n 3)
    n
    (iter 2 1 0 n)))

(iter-fn 1)
(iter-fn 5)
