# Start from the Ubuntu 20.04  image
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the curler.sh file from this location to /usr/src/app/ creating /usr/src/app/hello.sh.
COPY curler.sh .

# install curl
RUN apt-get update && apt-get install -y curl

# When running Docker run the command will be ./curler.sh
CMD ./curler.sh
