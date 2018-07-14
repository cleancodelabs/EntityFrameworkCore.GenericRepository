#!/usr/bin/env bash
cd src/
for d in */; do 
    if [ -d ${d} ]; then
        cd ${d} && dotnet pack *.csproj --include-symbols --output "../../build" && cd ..; 
    fi
done