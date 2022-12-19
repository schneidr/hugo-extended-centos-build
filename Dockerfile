FROM centos:7
RUN yum install gcc gcc-c++ make unzip wget -y && \
    wget https://go.dev/dl/go1.19.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go*.linux-amd64.tar.gz && \
    rm go*.linux-amd64.tar.gz
ADD compile_hugo.sh /usr/local/bin/compile_hugo.sh
WORKDIR /work
ENTRYPOINT /usr/local/bin/compile_hugo.sh
