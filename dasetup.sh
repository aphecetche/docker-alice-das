#!/bin/sh

callda() {
    local dapath=$1
    local detectorcode=$2
    local rawfile=$3
    docker run -it --rm \
        -v $rawfile:/file.raw \
        -v $(pwd):/daoutput \
        -e DATE_DETECTOR_CODE="$detectorcode" \
        -e DAQ_DEBUG=true \
        -e DAQDA_TEST_DIR="/daoutput" \
        -e DAQ_DETDB_LOCAL="/daoutput" \
        -e AMORE_NO_DB=true \
        -e AMORE_NO_DB_DIR="/daoutput" \
        -e AMORE_DA_NAME="dummy" \
        -e DATE_RUN_NUMBER=12345 \
        aphecetche/alice-muon-das \
        $dapath /file.raw 
}

damchbpevo() {
    local rawfile=$1
    callda /opt/daqDA-MCH-BPEVO/MCHBPEVOda.exe MCH $rawfile
}

#  export DATE_DETECTOR_CODE=MCH
#   export DATE_RUN_NUMBER=162181
#   export AMORE_DA_NAME=mon-DA-MUON_TRK-0
#   $ALICE_BUILD/lib/tgt_macosx64/MUONTRKOCCda.exe $MYTESTFILE
