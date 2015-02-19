build: node_modules/

test: node_modules/ build lint dist/polyfill.js
	./test/run.sh

lint: node_modules/
	./node_modules/.bin/jshint *.js test/*.js

dist/polyfill.js: polyfill.js fetch.js index.js
	mkdir -p dist
	./node_modules/.bin/browserify polyfill.js -o dist/polyfill.js

node_modules/:
	npm install

clean:
	rm -rf ./node_modules

.PHONY: build clean lint test
