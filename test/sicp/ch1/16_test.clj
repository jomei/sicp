(ns sicp.ch1.16-test
  (:require [clojure.test :refer :all]
            [sicp.ch1.16 :refer :all]))

(deftest test-fast-expt
  (testing "Expt should return 4 when n for 2 ^ 2"
    (is (= (fast-expt 2 2) 4)))
  (testing "Expt should return 1 for n = 0"
    (is (= (fast-expt 5 0) 1))))
