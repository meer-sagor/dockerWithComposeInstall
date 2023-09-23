#!/bin/bash

check_docker_installed() {
    if ! command -v docker &>/dev/null; then
        return 1
    else
        return 0
    fi
}

install_docker() {

    sudo apt install docker.io

    exit 0
}

if check_docker_installed; then
    echo "docker is already installed."
    exit 0
else
    read -p "docker is not installed. Do you want to install it? (yes/no): " answer

    if [[ "$answer" == "yes" || "$answer" == "y" ]]; then
        echo "Installing docker..."
        install_docker
    else
        echo "Stopping all processes since docker is not installed."
        exit 1
    fi

fi
