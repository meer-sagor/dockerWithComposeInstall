# Docker and Docker-Compose Installation and Uninstallation Script

## Introduction

Managing Docker and Docker-Compose installations can sometimes be a cumbersome task, especially when you frequently need to install and uninstall these tools. To streamline this process, we've created a set of script files that simplify the installation and uninstallation of Docker and Docker-Compose on your system.

These scripts are designed to save you time and effort, ensuring a hassle-free experience when working with Docker containers and Docker-Compose applications. Below, we provide instructions on how to use these scripts for installation and uninstallation.

## Installation

### Prerequisites

Before using the installation script, please ensure you have the following prerequisites on your system:

-   A Unix-like operating system (Linux or macOS).
-   Administrative privileges (sudo access).
-   A working internet connection to download Docker and Docker-Compose.

### Installation Process

1.  Clone the repo.

    `https://github.com/meer-sagor/dockerWithComposeInstall.git`

2.  then change directory to dockerWithComposeInstall
		
    `cd ./dockerWithComposeInstall`

3.  Make the script executable by running:

    `chmod +x install.sh` 
    
4.  Execute the script with administrative privileges using `sudo`:
    
    `sudo ./install.sh` 
    
5.  The script will guide you through the installation process, including the download and setup of Docker and Docker-Compose on your system.
    
6.  Once the installation is complete, you can verify it by running:

    `docker -v`

    `docker-compose -v`
    

## Uninstallation

### Uninstallation Process

If you ever need to uninstall Docker and Docker-Compose from your system, follow these steps:

1.  Make the script executable by running:
    
    `chmod +x uninstall.sh` 
    
2.  Execute the script with administrative privileges using `sudo`:
    
    `sudo ./uninstall.sh` 
    
3.  The script will guide you through the uninstallation process, removing Docker and Docker-Compose from your system.
    

## Conclusion

With these installation and uninstallation scripts, you can easily manage Docker and Docker-Compose on your system, saving valuable time and effort. Enjoy smoother Docker container and Docker-Compose application management, and happy coding!

If you encounter any issues or have suggestions for improvements, please feel free to [submit an issue](https://github.com/meer-sagor/dockerWithComposeInstall/issues) on our GitHub repository.


**Disclaimer:** These scripts are provided as-is and without warranty. Use them at your own discretion and responsibility.