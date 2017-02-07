#!/usr/bin/env bash

# http://techblog.netflix.com/2015/11/linux-performance-analysis-in-60s.html
# http://techblog.netflix.com/2015/04/introducing-vector-netflixs-on-host.html


echo -e "\e[31;30m****** SYSTEM UPTIME AND LOAD ******\e[0m"
uptime -p
echo ""

echo -e "\e[31;43m••••••[ dmesg - last 10 lines ]••••••\e[0m"
dmesg | tail

echo -e "\e[31;43m ...:::[ TOP 10 Processes by Memory ]:::...\e[0m"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head

echo -e "\e[31;43m ######[ TOP 10 Processes by Memory ]######\e[0m"
echo ""
echo ""
echo ""
echo -e "\e[31;30m‡‡‡‡‡‡[ SYSTEM UPTIME AND LOAD ]‡‡‡‡‡‡\e[0m"
