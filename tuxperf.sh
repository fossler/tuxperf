#!/usr/bin/env bash

# http://techblog.netflix.com/2015/11/linux-performance-analysis-in-60s.html
# http://techblog.netflix.com/2015/04/introducing-vector-netflixs-on-host.html
# http://www.tecmint.com/sysstat-commands-to-monitor-linux/?utm_content=bufferbb904&utm_medium=social&utm_source=plus.google.com&utm_campaign=buffer

clear

echo -e "\e[30;43m\e[1m *************[ SYSTEM UPTIME AND LOAD ]************* \e[0m"
uptime -p
echo ""

echo -e "\e[30;43m\e[1m *************[ dmesg - last 10 lines ]************* \e[0m"
dmesg | tail
echo ""

echo -e "\e[30;43m\e[1m *************[ TOP 10 Processes by Memory ]************* \e[0m"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
echo ""

echo -e "\e[30;43m\e[1m *************[ TOP 10 Processes by CPU ]************* \e[0m"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
echo ""

echo -e "\e[30;43m\e[1m *************[ mpstat ]************* \e[0m"
mpstat -P ALL
echo ""

echo -e "\e[30;43m\e[1m *************[ vmstat ]************* \e[0m"
vmstat --unit M -w 1 1
echo ""

echo -e "\e[30;43m\e[1m *************[ pidstat ]************* \e[0m"
pidstat 1 1
echo ""
