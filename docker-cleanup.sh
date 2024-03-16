#! /bin/sh

# Kill add dockerd processes
ps -aux | grep root | grep dockerd | awk '{print $2}' | xargs sudo kill -9
