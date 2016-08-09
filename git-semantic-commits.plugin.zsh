#!/bin/bash
0=${(%):-%N}
for f in ${0:A:h}/scripts/*; do
  source $f;
done
