FROM google/cloud-sdk

COPY install.sh /
RUN apt-get install python-pip make -y && pip install virtualenv sphinx sphinx_rtd_theme
RUN chmod +x install.sh && ./install.sh
