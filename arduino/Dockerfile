#FROM ros/rosserial:indigo 
FROM 172.20.0.215:5000/li3ds/ros/rosserial:indigo

MAINTAINER Lionel ATTY <lionel.atty@ign.fr>

# arduino-cmake
RUN apt-get update
RUN apt-get install -y \
		git	\
        # curl \
        cmake \
        build-essential g++ \
        vim \
        arduino \
        && apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/yoyonel/arduino-cmake.git /root/arduino-cmake

#COPY ./apt.conf /etc/apt/apt.conf

#COPY ./scripts/set_env_arduino-cmake.sh /root/.
#COPY ./scripts/launch_rosserial_client.sh /root/.
#COPY ./scripts/stop_rosserial_client.sh /root/.

ENV ARDUINOCMAKE_DIR /root/arduino-cmake

CMD ["/bin/bash"]

WORKDIR /root/

