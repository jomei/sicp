(ns sicp.ch1.12-test
  (:require [clojure.test :refer :all]
            [sicp.ch1.12 :refer :all]))

(deftest test-recur-fn
  (testing "Pascal triangle should return [1 1] for second line"
    (is (= (pascal-triangle 1) [1 1]))))

(deftest test-recur-fn
  (testing "Pascal triangle should return [1 4 6 4 1] for 5th line"
    (is (= (pascal-triangle 5) [1 4 6 4 1]))))
