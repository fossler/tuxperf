#!/usr/bin/env bash

printf "x========[ System Uptime ]========================================================================================\n"
uptime -p

printf "x========[ dmesg ]========================================================================================\n"
dmesg | tail
