#!/bin/bash

mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'cc/a020a600f704' -m 'mod_disable;jura'
mosquitto_pub -h iot-central.synyx.coffee -p 1883 -t 'cc/a020a600f704' -m 'mod_enable;juraterm'
