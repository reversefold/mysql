#!/bin/bash -ex
for ver in 5.5 5.6 5.7 8.0; do
    pushd "${ver}"
    docker build -t papercrane/mysql:"${ver}" .
    docker push papercrane/mysql:"${ver}"
    pushd local-data
    docker build -t papercrane/mysql-local:"${ver}" .
    docker push papercrane/mysql-local:"${ver}"
    popd
    popd
done
