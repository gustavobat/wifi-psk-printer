#!/bin/bash
nmcli -g NAME connection show | xargs -d '\n' sh -c 'for arg do echo "$arg": $(nmcli -s -g 802-11-wireless-security.psk connection show "$arg"); done'
