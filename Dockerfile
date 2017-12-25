# has Python 3
FROM ubuntu:17.10   

RUN apt update && \
    apt install -y liblapack-dev && \
    apt install -y python3-dev && \ 
    apt install -y libffi-dev && \
    apt install -y python3-tk && \
    apt install -y python3-pip && \
    apt install -y gfortran

# install Python packages
RUN pip3 install numpy scipy sklearn && \
    pip3 install pytest && \
    pip3 install cffi cairocffi matplotlib && \
    pip3 install cmmnbuild-dep-manager && \
    pip3 install pyjapc && \
    pip3 install theano slycot control
