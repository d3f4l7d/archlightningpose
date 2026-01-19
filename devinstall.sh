echo
echo " ____  _______     __"
echo "|  _ \| ____\ \   / /"
echo "| | | |  _|  \ \ / / "
echo "| |_| | |___  \ V /  "
echo "|____/|_____|  \_/   "
echo

sudo pacman -Syu --noconfirm ffmpeg nvtop s-tui

git clone https://github.com/paninski-lab/lightning-pose.git ~/.config/lightning-pose
git clone https://github.com/paninski-lab/lightning-pose-app.git ~/.config/lightning-pose-app
cd ~/.config/lightning-pose
rm -rf .git .github
~/.pyenv/versions/venv10/bin/pip install -e ".[dev.extra_models]"
cd ~/.config/lightning-pose-app
rm -rf .git .github
~/.pyenv/versions/venv10/bin/pip install -e ".[dev.extra_models]"
~/.pyenv/versions/venv10/bin/litpose --help

echo "autoinstall of lightning-pose -- DONE"
