# Install fastfetch on any distro
if [ -x "$(command -v apt)" ]; then
    # Download and install the latest fastfetch release
    wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.16.0/fastfetch-linux-x86_64 -O fastfetch
    chmod +x fastfetch
    sudo mv fastfetch /usr/local/bin/
else
    if [ -x "$(command -v pacman)" ]; then
        sudo pacman -S fastfetch
    elif [ -x "$(command -v dnf)" ]; then
        sudo dnf install fastfetch
    elif [ -x "$(command -v yum)" ]; then
        sudo yum install fastfetch
    else
        echo "Error: Package manager not found. Please install fastfetch manually."
    fi
fi