# Detect the package manager
if [ -x "$(command -v apt)" ]; then
    sudo apt install google-chrome-stable
elif [ -x "$(command -v yum)" ]; then
    sudo yum install google-chrome-stable
elif [ -x "$(command -v dnf)" ]; then
    sudo dnf install google-chrome-stable
elif [ -x "$(command -v pacman)" ]; then
    sudo pacman -S google-chrome-stable
else
    echo "Error: Package manager not found. Please install Google Chrome manually."
fi

