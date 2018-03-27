FROM google/cloud-sdk

COPY install.sh /
RUN chmod +x install.sh && apt-get install make -y && ./install.sh

# Download and Install hugo
RUN tar xzf /usr/local/${HUGO_BINARY}.tar.gz -C /usr/local/ \
	&& ln -s /usr/local/${HUGO_BINARY}/${HUGO_BINARY} /usr/local/bin/hugo \
	&& rm /usr/local/${HUGO_BINARY}.tar.gz
