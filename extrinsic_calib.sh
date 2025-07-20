#!/bin/bash

export DISPLAY=:0

source install/setup.bash && ros2 launch extrinsic_calibration_manager calibration.launch.xml mode:=manual sensor_model:=twizy_sensor_kit vehicle_model:=twizy_vehicle vehicle_id:=twizy
