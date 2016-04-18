(defproject sicp "0.1.0-SNAPSHOT"
  :description "Solutions for task from 'Structure and interpretation of computer programs' book"
  :url "https://github.com/jomei/sicp"
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :main ^:skip-aot sicp.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}})
