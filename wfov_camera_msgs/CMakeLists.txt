cmake_minimum_required(VERSION 2.8.3)
project(wfov_camera_msgs)
find_package(catkin REQUIRED COMPONENTS sensor_msgs message_generation)
add_message_files(DIRECTORY msg FILES WFOVTrigger.msg WFOVImage.msg WFOVCompressedImage.msg)
generate_messages(DEPENDENCIES sensor_msgs)
catkin_package(CATKIN_DEPENDS sensor_msgs message_runtime)
