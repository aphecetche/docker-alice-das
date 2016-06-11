Docker container to run ALICE MUON DAs

Typical usage is :

docker run -it --rm -v $rawfile:/file.raw -v `pwd`:/daoutput aphecetche/alice-muon-das $dapath /file.raw

where $rawfile is the absolute path (on the host) of the raw data file to be processed and $dapath the absolute
path (on the container) of the DA to be executed. Can currently be one of :

- /opt/daqDA-MCH-OCC/MUONTRKOCCda.exe
- /opt/daqDA-MCH-BPEVO/MCHBPEVOda.exe
- /opt/daqDA-MCH-PED/MCHPEDda.exe
- /opt/daqDA-MTR/MTRda.exe

The `dasetup.sh` script can be used to simplify the usage by defining shell functions to call the DAs.

- damchocc
- damchbpevo
- damchped
- damtr

Than can then be used as :

```
damchbpevo $HOME/analysis/RC-5286/16000254646019.103.raw
```

The output (and the input, e.g. configuration, if needed) are put (taken from) in the current directory.

