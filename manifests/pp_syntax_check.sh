#!/bin/bash -eu
find -name '*.pp' | xargs -n 1 -t puppet parser validate 
