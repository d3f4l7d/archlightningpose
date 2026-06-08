if pacman -Q zsh &> /dev/null; then
    #!/bin/zsh
    date
    echo "zsh detected ($USER@$HOST)"
else
    echo "zsh is not installed."
    echo "This script was tested under zsh."
    echo "Install zsh via pacman like: sudo pacman -S zsh && sudo chsh -s /bin/zsh $USER"
    echo "Or remove this if section via your texteditor like: vim lightningposeinstall.sh"
    exit
fi


echo
echo " _     ___ ____ _   _ _____ _   _ ___ _   _  ____   ____   ___  ____  _____ "
echo "| |   |_ _/ ___| | | |_   _| \ | |_ _| \ | |/ ___| |  _ \ / _ \/ ___|| ____|"
echo "| |    | | |  _| |_| | | | |  \| || ||  \| | |  _  | |_) | | | \___ \|  _|  "
echo "| |___ | | |_| |  _  | | | | |\  || || |\  | |_| | |  __/| |_| |___) | |___ "
echo "|_____|___\____|_| |_| |_| |_| \_|___|_| \_|\____| |_|    \___/|____/|_____|"
echo

sudo pacman -Syuu

if ! command -v litpose &> /dev/null
then
    echo
    echo " _     ____  "
    echo "| |   |  _ \ "
    echo "| |   | |_) |"
    echo "| |___|  __/ "
    echo "|_____|_|    "
    echo

    sudo pacman -S --noconfirm ffmpeg
    ~/.pyenv/versions/venv10/bin/pip install --upgrade pip
    ~/.pyenv/versions/venv10/bin/pip install lightning-pose
    ~/.pyenv/versions/venv10/bin/pip install lightning-pose-app
    ~/.pyenv/versions/venv10/bin/litpose run_app
    echo "autoinstall of lightning pose -- DONE"
else
    echo "lightning pose is already installed. Skip LP process..."
fi


