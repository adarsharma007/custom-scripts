#!/bin/bash

# Source the nvm script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Check if nvm is available
if ! command -v nvm &> /dev/null
then
    echo "nvm is not installed. Please install nvm first."
    exit 1
fi


# Get the current Node.js version
current_version=$(node -v)
echo "Current Node.js version: $current_version"

# Default versions to switch between
version1="18.16.1"
version2="16.16.0"

# Check if a version argument is provided in the format -v<version>
if [[ "$1" =~ ^-v?([0-9]+\.[0-9]+\.[0-9]+)$ ]]; then
    new_version=${BASH_REMATCH[1]}
else
    # Switch between the default versions if no version is provided
    if [ "$current_version" == "v$version1" ]; then
        new_version=$version2
    else
        new_version=$version1
    fi
fi

# Install and use the specified Node.js version
nvm install $new_version
nvm use $new_version

# Set the specified version as the default version
nvm alias default $new_version

# Verify the change
echo "Switched to Node.js version: $(node -v)"
echo "Default Node.js version set to: $new_version"

# Refresh the terminal
exec $SHELL -l