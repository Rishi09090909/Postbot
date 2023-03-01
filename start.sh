if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rishi09090909/Postbot.git /Postbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Postbot
fi
cd /Postbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
