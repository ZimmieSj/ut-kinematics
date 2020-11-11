# ut-kinematics
Probabilistic forward kinematics using the unscented transform, with vision-based state estimation. 


# Installation

## Standalone machine

- Check out and build the repository (which also pulls the nice [hrl-kdl package](https://github.com/gt-ros-pkg/hrl-kdl))

```
git clone https://github.com/mgb45/ut-kinematics.git
cd ut-kinematics
git submodule update --init --recursive
catkin_make
source devel/setup.bash
jupyter notebook
```

## Running with Docker 

- Check out repository and submodules
```
git clone https://github.com/mgb45/ut-kinematics.git
cd ut-kinematics
git submodule update --init --recursive
```
- Build docker image
```
docker build -t ros_kinetic_jupyter .
```
- Run container with port forwarding for jupyter notebooks
```
docker run -it -p 8868:8868 --volume ${PWD}:/home/ ros_kinetic_jupyter /bin/bash
```
- Compile and run jupyter in workspace
```
./ros_entrypoint.sh
source /opt/ros/kinetic/setup.bash
cd /home
catkin_make
source devel/setup.bash
jupyter notebook --port=8868 --ip=0.0.0.0 --no-browser --allow-root
```
- In a browser, visit `http://127.0.0.1:8868` and enter the token from the terminal to access the notebooks

# Notebooks

Before running, make sure data has been copied into the notebooks folder, along with the robot urdf files (I have not uploaded the packbot one here, as this is a confidential file). Make sure to convert xacro files to plain text xml.
```
xacro <name>.urdf.xacro > robot.urdf
```


- [Calibration](notebooks/Calibration.ipynb) is used to align vicon mocap data with FK data using procrustes analysis, for ground truth comparison and evaluation.
- [Forward kinematics example](notebooks/Robot_kinematics.ipynb) gives an example of using hrl_kdl for forward kinematics.
