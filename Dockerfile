FROM osrf/ros2:ardent-basic

COPY ./ament_src /ament_ws/src
RUN cd /ament_ws && src/ament/ament_tools/scripts/ament.py build --build-tests --symlink-install
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]