#!/bin/bash -xve

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_ros/
cd ~/catkin_ws
catkin_make -j8 || catkin_make -j8 #CPU2個だけど8並列頑張ってね。しかも1回目コケたらもう一回やってね
