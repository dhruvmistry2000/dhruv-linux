# Download and install Brave browser
if [ -x "$(command -v apt)" ]; then
    sudo apt install brave-browser
elif [ -x "$(command -v yum)" ]; then
    sudo yum install brave-browser
elif [ -x "$(command -v dnf)" ]; then
    sudo dnf install brave-browser
elif [ -x "$(command -v pacman)" ]; then
    sudo pacman -S brave-browser
else
    echo "Error: Package manager not found. Please install Brave browser manually."
fi
