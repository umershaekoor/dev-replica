#!/bin/sh

apk add --update npm

# Start the first process
cd /home/mock-server && node main.js &

# Start the second process
cd /home/second-mock-server && node main.js &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?
