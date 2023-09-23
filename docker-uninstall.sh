#!/bin/bash

check_docker_installed() {
    if ! command -v docker &>/dev/null; then
        return 1
    else
        return 0
    fi
}
uninstall_docker() {

    sudo apt remove docker.io

    exit 0
}

if check_docker_installed; then

    read -p "docker is installed. Do you want to uninstall it? (yes/no): " answer

    if [[ "$answer" == "yes" || "$answer" == "y" ]]; then
        echo "uninstalling docker..."
        uninstall_docker
    else
        echo "Stopping all processes since docker is not uninstalled."
        exit 1
    fi

else
    echo "docker is no installed."
    exit 0
fi
