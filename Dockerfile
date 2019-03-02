FROM ubuntu:18.04

RUN apt update && apt install -y python-dev git 

RUN mkdir /seattle
WORKDIR /seattle
RUN git clone https://github.com/SeattleTestbed/repy_v2
RUN cd repy_v2/scripts && python initialize.py
RUN mkdir /seattle/install 
RUN python repy_v2/scripts/build.py /seattle/install

ADD ./src/ /seattle/install/user
WORKDIR /seattle/install
RUN cp user/* .

ENTRYPOINT "/bin/bash"
