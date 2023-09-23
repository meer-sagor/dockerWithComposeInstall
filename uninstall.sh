#!/bin/bash

# Call the first script
echo "Running docker-uninstall.sh..."
./docker-uninstall.sh

# Check the exit status of docker-uninstall.sh
if [ $? -eq 0 ]; then
    echo "docker-uninstall.sh executed successfully."
else
    echo "docker-uninstall.sh encountered an error."
    exit 1
fi

# Call the second script
echo "Running docker-compose-uninstall.sh..."
./docker-compose-uninstall.sh

# Check the exit status of docker-compose-uninstall.sh
if [ $? -eq 0 ]; then
    echo "docker-compose-uninstall.sh executed successfully."
else
    echo "docker-compose-uninstall.sh encountered an error."
    exit 1
fi

echo "Wrapper script completed."



