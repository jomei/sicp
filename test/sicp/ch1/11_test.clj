(ns sicp.ch1.11-test
  (:require [clojure.test :refer :all]
            [sicp.core :refer :all]
            [sicp.ch1.11 :refer :all]))

(deftest test-recur-fn
  (testing "Recur fn should return n when n < 3"
    (is (= (recur-fn 1) 1)))
  (testing "Recur fn should perform counting when n > 3"
    (is (= (recur-fn 5) 11))))

(deftest test-iter-fn
  (testing "Iter fn should return n when n < 3"
    (is (= (iter-fn 1) 1)))
  (testing "Iter fn should perform counting when n > 3"
    (is (= (iter-fn 5) 11))))
