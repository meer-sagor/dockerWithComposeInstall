#!/bin/bash

check_docker_compose_installed() {
    if ! command -v docker-compose &>/dev/null; then
        return 1
    else
        return 0
    fi
}

uninstall_docker_compose() {

    sudo rm $(which docker-compose)

    exit 0
}

if check_docker_compose_installed; then
    read -p "docker-compose is installed. Do you want to uninstall it? (yes/no): " answer

    if [[ "$answer" == "yes" || "$answer" == "y" ]]; then
        echo "uninstalling docker-compose..."
        uninstall_docker_compose
    else
        echo "Stopping all processes since docker-compose is not uninstalled."
        exit 1
    fi

else
    echo "docker-compose is not installed."
    exit 0
fi
