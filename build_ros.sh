echo "Building ROS nodes"
NODE_FOLDER=$PWD/Examples/ROS

export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$NODE_FOLDER
cd Examples/ROS/ORB_SLAM2
mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j

echo "Make sure to run the following command to run the ORB_SLAM2 nodes:"
echo "export ROS_PACKAGE_PATH=\$ROS_PACKAGE_PATH:$NODE_FOLDER"
