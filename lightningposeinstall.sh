echo
echo " _     ___ ____ _   _ _____ _   _ ___ _   _  ____   ____   ___  ____  _____ "
echo "| |   |_ _/ ___| | | |_   _| \ | |_ _| \ | |/ ___| |  _ \ / _ \/ ___|| ____|"
echo "| |    | | |  _| |_| | | | |  \| || ||  \| | |  _  | |_) | | | \___ \|  _|  "
echo "| |___ | | |_| |  _  | | | | |\  || || |\  | |_| | |  __/| |_| |___) | |___ "
echo "|_____|___\____|_| |_| |_| |_| \_|___|_| \_|\____| |_|    \___/|____/|_____|"
echo

sudo pacman -Syu --noconfirm ffmpeg

~/.pyenv/versions/venv10/bin/pip install --upgrade pip
~/.pyenv/versions/venv10/bin/pip install lightning-pose
~/.pyenv/versions/venv10/bin/pip install lightning-pose-app
~/.pyenv/versions/venv10/bin/litpose run_app

echo "autoinstall of lightning-pose -- DONE"
