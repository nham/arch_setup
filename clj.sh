#!/bin/sh

breakchars="(){}[],^%$#@\"\";:''|\\"

exec rlwrap --remember -c -b "$breakchars" \
             java clojure.main

