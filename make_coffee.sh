#!/bin/bash


echo "kaffee mahlen"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:07'
sleep 3s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:08'
sleep 5s

echo "Schieber oeffnen / rumfahren"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:11'
sleep 5s

echo "drainage valve on"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:1D'
sleep 5s

echo "brewgroup into brewing position"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:13'
sleep 5s

echo "wasser aufheizen"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:03'
sleep 2s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:04'

echo "wasser ansaugen"
  mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:01'
sleep 1s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:02'
sleep 1s

echo "kaffee marsch"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:01'
sleep 20s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:02'
sleep 3s

echo "leeren"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:0E'
sleep 5s

echo "brewgroup into grinding position"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'coffee/command/a020a600f704' -m 'FN:0F'
sleep 1s

echo finished
