(ns sicp.ch1.12)

(defn pascal-triangle [n]
  "Returns nth line of pascal triangle"
  (pascal-iter [1] n 1)
  )

(defn pascal-iter [line n count]
  (if (= count n)
    line
    (get-line line)))

(defn get-line [prev]
  )
