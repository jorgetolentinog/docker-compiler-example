# Docker compiler example

Compilar imagen de docker
```
docker build -t my_compiler .
```

Compilar fuente
```
docker run -it --mount src="$(pwd)",target=/go/target,type=bind my_compiler ash -c "cd target/source && go build demo.go && cd .. && mkdir -p dist && mv source/demo dist"

o

./package.sh
```
