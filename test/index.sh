#!/bin/bash
#jshint js/*.js --config js/.jshintrc
#jshint js/tests/unit/*.js --config js/.jshintrc
node test/server.js &
phantomjs test/phantom.js "http://localhost:11000/test"
#kill -9 `cat test/pid.txt`
#rm test/pid.txt