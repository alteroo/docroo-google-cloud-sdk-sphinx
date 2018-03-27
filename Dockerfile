FROM google/cloud-sdk

COPY install.sh /
RUN chmod +x install.sh && apt-get install python-pip sphinx sphinx_rtd_theme make -y && pip install virtualenv && ./install.sh
