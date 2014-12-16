#!/bin/sh
rm thx.math.zip
zip -r thx.math.zip hxml src test doc/ImportFormat.hx extraParams.hxml haxelib.json README.md test test.hxml
haxelib submit thx.math.zip