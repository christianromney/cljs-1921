.PHONY: clean serial parallel

clean:
	rm -rf out

cljs.jar:
	curl -L -O https://github.com/clojure/clojurescript/releases/download/r1.9.562/cljs.jar

serial: cljs.jar src/foo.cljc src/core.cljc
	java -cp cljs.jar:src clojure.main serial.clj

parallel: cljs.jar src/foo.cljc src/core.cljc
	java -cp cljs.jar:src clojure.main parallel.clj
