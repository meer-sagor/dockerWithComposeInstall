#!/bin/bash

# Call the first script
echo "Running docker-install.sh..."
./docker-install.sh

# Check the exit status of docker-install.sh
if [ $? -eq 0 ]; then
    echo "docker-install.sh executed successfully."
else
    echo "docker-install.sh encountered an error."
    exit 1
fi

# Call the second script
echo "Running docker-compose-install.sh..."
./docker-compose-install.sh

# Check the exit status of docker-compose-install.sh
if [ $? -eq 0 ]; then
    echo "docker-compose-install.sh executed successfully."
else
    echo "docker-compose-install.sh encountered an error."
    exit 1
fi

echo "Wrapper script completed."



