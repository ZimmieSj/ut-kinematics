# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:kinetic-desktop-xenial

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop-full=1.3.2-0* \
    python-pip \
    ros-kinetic-urdfdom-py \
    && rm -rf /var/lib/apt/lists/*

RUN pip2 install --upgrade pip
RUN pip2 install pycurl
RUN pip2 install jupyter
RUN pip2 install matplotlib==2.2.0



