(require '[cljs.build.api :as compiler])
(compiler/build "src" {:output-to "out/main.js"
                       :output-dir "out"
                       :verbose true
                       :parallel-build true})
