#FROM ros/rosserial:indigo 
FROM 172.20.250.99:5000/li3ds/rosserial:indigo

MAINTAINER Lionel ATTY <lionel.atty@ign.fr>

# arduino-cmake
RUN apt-get update
RUN apt-get install -y \
		git	\
        # curl \
        cmake \
        build-essential g++ \
        vim \
        zsh \
        tmux \
        colord \
        arduino \
        && apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

# Config GIT pour utiliser le proxy IGN
RUN git config --global http.proxy http://proxy.ign.fr:3128

# Install Zsh
RUN git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
      && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
      && chsh -s /bin/zsh

# ARDUINO-CMAKE
RUN git clone https://github.com/yoyonel/arduino-cmake.git /root/arduino-cmake

#COPY ./apt.conf /etc/apt/apt.conf

#COPY ./scripts/set_env_arduino-cmake.sh /root/.
#COPY ./scripts/launch_rosserial_client.sh /root/.
#COPY ./scripts/stop_rosserial_client.sh /root/.

ENV ARDUINOCMAKE_DIR /root/arduino-cmake

#CMD ["/bin/bash"]
CMD ["/bin/zsh"]

#ENTRYPOINT ["source", "/opt/ros/indigo/setup.zsh"]

WORKDIR /root/

