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
pyenv activate venv10
pip install torchvision torchaudio
pip install -e ".[dev.extra_models]"
pytest

echo "autoinstall of lightning pose -- DONE"
