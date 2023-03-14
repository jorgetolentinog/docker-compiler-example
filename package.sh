#!/usr/bin/env bash

docker run -it --mount src="$(pwd)",target=/go/target,type=bind my_compiler ash -c "cd target/source && go build demo.go && cd .. && mkdir -p dist && mv source/demo dist"
