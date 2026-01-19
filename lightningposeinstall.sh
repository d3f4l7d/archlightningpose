echo
echo " _     ____  "
echo "| |   |  _ \ "
echo "| |   | |_) |"
echo "| |___|  __/ "
echo "|_____|_|    "
echo

sudo pacman -Syu

git clone https://github.com/paninski-lab/lightning-pose.git ~/.config/lightningpose
cd ~/.config/lightningpose
rm -rf .git .github
echo "pyenv activate venv10"
echo "pip install torchvision torchaudio"
echo "pip install -e ".[dev.extra_models]""
echo "pytest"

echo "autoinstall of lightning pose -- DONE"
