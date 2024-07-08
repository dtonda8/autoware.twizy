#!/bin/bash

source install/setup.bash

ros2 launch autoware_launch planning_simulator.launch.xml map_path:=$HOME/autoware_map/sample-map-planning/ vehicle_model:=twizy_vehicle vehicle_id:=twizy sensor_model:=twizy_sensor_kit
