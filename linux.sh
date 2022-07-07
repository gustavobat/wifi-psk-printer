#!/bin/bash
for SSID in $(nmcli -g NAME connection show); do echo "$SSID": $(nmcli -s -g 802-11-wireless-security.psk connection show "${SSID}"); done
