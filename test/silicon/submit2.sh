#!/bin/bash

EPA="q-e-qe-6.2.1/bin/epa.x"
PYTHON="python3"
BOLTZTRAP="boltztrap-1.2.5/src/BoltzTraP"

$EPA < silicon.epa.in > silicon.epa.out
$PYTHON qe2boltz.py > qe2boltz.out
$BOLTZTRAP silicon.def > silicon.boltztrap.out
$PYTHON plot_boltz.py > plot_boltz.out
$PYTHON plot_tau.py > plot_tau.out
