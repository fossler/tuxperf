#!/usr/bin/env bash

# http://techblog.netflix.com/2015/11/linux-performance-analysis-in-60s.html
# http://techblog.netflix.com/2015/04/introducing-vector-netflixs-on-host.html


printf "x========[ System Uptime ]========================================================================================\n"
uptime -p

printf "x========[ dmesg ]========================================================================================\n"
dmesg | tail

printf "x========[ TOP 10 Processes by Memory ]========================================================================================\n"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
