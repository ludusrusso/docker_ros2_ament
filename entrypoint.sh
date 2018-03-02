#!/bin/bash
set -e

# setup ros2 environment
source "/opt/ros/$ROS2_DISTRO/setup.bash"
source /opt/ros/$ROS2_DISTRO/share/ros2cli/environment/ros2-argcomplete.bash
source "/ament_ws/install/setup.bash"
exec "$@"