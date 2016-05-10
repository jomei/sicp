(ns sicp.ch1.12)

(defn get-line [prev-line result]
  (if (empty? prev-line) (conj result 1))
  (if (empty? result)
    (do
      (conj result 1)
      (get-line prev-line result))
    (do
      (conj result (+ (first prev-line) (first(rest prev-line))))
      (get-line (rest prev-line) result)))
)

(get-line [1 2 3] [])

(+ nil 1)
(defn pascal-iter [line n count]
  (if (= count n)
    line
    (get-line line)))

(defn pascal-triangle
  "Returns nth line of pascal triangle"
  [n]
  (pascal-iter [1] n 1)
  )
