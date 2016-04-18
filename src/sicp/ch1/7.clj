(ns sicp.ch1.7
  (:require [clojure.math.numeric-tower :as math]))

(def error 0.001)

(defn average [x y]
  (/ (+ x y) 2))

(defn improve [guess x]
  (average (/ guess x)))

(defn good? [guess x]
  (< (math/abs (- (square guess) x)) error))

(defn square [x]
  (* x x))

(defn sqrt-iter [guess x]
  (if (good? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(defn sqrt [x]
  (sqrt-iter 0.1 x))

(sqrt 4)
