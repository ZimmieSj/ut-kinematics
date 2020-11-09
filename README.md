# ut-kinematics
Probabilistic forward kinematics using the unscented transform, with vision-based state estimation. 


# Installation

- Check out and build the repository (which also pulls the nice [hrl-kdl package](https://github.com/gt-ros-pkg/hrl-kdl))

```
git clone https://github.com/mgb45/ut-kinematics.git
git submodule update --init --recursive
catkin_make
source devel/setup.bash
```

- Move urdf.xacro file into notebooks folder (I have not uploaded the packbot one here, as this is a confidential file). Convert file to plain text xml.

```
xacro <name>.urdf.xacro > robot.xml
```

# Notebooks

- [Calibration](./notebooks/Calibration.ipynb) is used to align vicon mocap data with FK data using procrustes analysis, for ground truth comparison and evaluation.
