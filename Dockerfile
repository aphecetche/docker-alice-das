FROM aphecetche/alice-amore

ENV DAQDALIB_PATH /opt/daqDA-lib

RUN yum install -y daqDA-MCH-BPEVO daqDA-MCH-OCC daqDA-MCH-PED daqDA-MTR

RUN mkdir /daoutput

WORKDIR /daoutput
