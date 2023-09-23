#!/bin/bash

check_docker_compose_installed() {
    if ! command -v docker-compose &>/dev/null; then
        return 1
    else
        return 0
    fi
}

install_docker_compose() {
    # get latest docker compose released tag
    # COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)
    # Install docker-compose
    # sudo curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose


    # Install docker-compose
    sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose


    # permission
    sudo chmod +x /usr/local/bin/docker-compose

    # Output compose version
    docker-compose -v

    exit 0
}

if check_docker_compose_installed; then
    echo "docker-compose is already installed."
    exit 0
else
    read -p "docker-compose is not installed. Do you want to install it? (yes/no): " answer

    if [[ "$answer" == "yes" || "$answer" == "y" ]]; then
        echo "Installing docker-compose..."
        install_docker_compose
    else
        echo "Stopping all processes since docker-compose is not installed."
        exit 1
    fi
fi
