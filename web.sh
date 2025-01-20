#!/bin/bash

# Function to display big blue text
function big_blue_text() {
    echo -e "\e[1;34m$1\e[0m"
}

# Display "CLONING REPOSITORY" in blue and clone the GitHub repository
big_blue_text "CLONING REPOSITORY"
git clone https://github.com/ownerzenuxs/website.git

# Change directory to the cloned TicketBot folder
cd TicketBot || { echo "Failed to change directory to TicketBot"; exit 1; }

# Display "INSTALLING NPM DEPENDENCIES" in blue and install discord.js
big_blue_text "INSTALLING NPM DEPENDENCIES"
npm install express pm2 || { echo "Failed to install discord.js"; exit 1; }

# Display completion message
big_blue_text "DEPENDENCIES INSTALLED. READY TO RUN YOUR BOT!"
