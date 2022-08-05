#!/bin/bash
echo "Build Script"
rm -rf build
mkdir build

echo "Web"
cp web/* build/

echo "Go Build Script"
cd webassembly
GOOS=js GOARCH=wasm go build -o ../build/hello.wasm
