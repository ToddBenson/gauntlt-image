From ubuntu:latest

RUN apt-get update
RUN apt-get install -y git sudo make locate wget ruby-dev host gem bsdmainutils|| true
RUN git clone https://github.com/ToddBenson/gauntlt /opt/gauntlt
RUN git clone https://github.com/drwetter/testssl.sh.git /opt/testssl
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN source /opt/gauntlt/install_gauntlt_deps.sh; exit 0
RUN bash /opt/gauntlt/ready_to_rumble.sh
RUN pip install datadog
