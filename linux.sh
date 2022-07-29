#!/bin/sh
nmcli -g NAME connection show | xargs -d '\n' -I {} sh -c 'echo "{}": $(nmcli -s -g 802-11-wireless-security.psk connection show "{}")'
