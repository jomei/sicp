(ns sicp.ch1.12)

(defn get-line [prev-line]
  (for [x prev-line] (println x))
  )

(defn pascal-iter [line n count]
  (if (= count n)
    line
    (get-line line)))

(get-line [0 1 2 3 4])


(defn pascal-triangle [n]
  "Returns nth line of pascal triangle"
  (pascal-iter [1] n 1)
  )
