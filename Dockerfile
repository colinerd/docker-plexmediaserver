##################################
# Plex with remote share support #
##################################

# Set base image from limetech/plex
FROM limetech/plex

# Set maintainer
MAINTAINER colinerd - colinerd@icloud.com

# Pre-reqs
RUN apt-get update && \
apt-get -y install smbclient && \
apt-get -y install cifs-utils

# Make remote mount directory
RUN mkdir /remotemnt 

# Add variables.sh file which contains mount command
ADD variables.sh variables.sh
RUN chmod +x variables.sh

# Plex Setup
ENV DEBIAN_FRONTEND="noninteractive" HOME="/root" LC_ALL="C.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8"
RUN bash /install.sh

# Define volumes
VOLUME /config
VOLUME /data

# Expose required ports
EXPOSE 32400

CMD ./variables.sh
