FROM google/cloud-sdk

COPY install.sh /
RUN chmod +x install.sh && apt-get install make -y && ./install.sh
