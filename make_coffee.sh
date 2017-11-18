#!/bin/bash

ESP_ID="a020a600f704"
#ESP_ID="6001940e28a9"

echo "kaffee mahlen"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:07'
sleep 1s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:08'
sleep 2s

echo "Brühposition"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:13'
sleep 5s

echo "wasser aufheizen"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:03'
sleep 2s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:04'

echo "wasser ansaugen "
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:01'
sleep 1s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:02'
#sleep 1s

echo "kaffee marsch"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:01'
sleep 15s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:02'
sleep 1s

#echo "squeeze it"
#sleep 3s
#mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:12'

echo "mit wasser putzen"
#
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:1C'
#mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:11'
sleep 5s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:01'
sleep 2s
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:02'


sleep 2s
echo "leeren"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:0E'
sleep 3s

echo "brewgroup into grinding position"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:0F'

sleep 2s
echo "close wasser putzen foo"
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t "coffee/command/$ESP_ID" -m 'FN:1D'


echo finished
