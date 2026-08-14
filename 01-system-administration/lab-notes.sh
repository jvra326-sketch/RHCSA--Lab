#!/bin/bash
# ==========================================
# Module 1: System Administration Lab Notes
# Target: RHCSA Certification Practice
# ==========================================

# 1. USER & GROUP MANAGEMENT
# Create a custom group with a specific GID
sudo groupadd -g 2000 sysops

# Create a user with a specific UID, primary group, and shell
sudo useradd -u 1500 -g sysops -s /bin/bash devuser

# Set a password for the new user
sudo passwd devuser


# 2. FILE PERMISSIONS & PERMISSION TESTING
# Create a test configuration file
touch test-config.txt

# View file permissions and ownership details
ls -l test-config.txt


# 3. SERVICE MANAGEMENT (systemctl)
# Check the active status of the firewall service
sudo systemctl status firewalld

# Enable and start a service immediately on boot
sudo systemctl enable --now chronyd
