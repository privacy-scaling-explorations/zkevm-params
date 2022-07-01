#!/bin/sh

set -xe

for k in $(seq 6 24); do
  docker run --rm -v "$(pwd)"/gen:/host \
    --entrypoint /gen_params \
    ghcr.io/privacy-scaling-explorations/zkevm-chain/prover $k /host/$k.bin
done
