if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SohanRazz/auto-filter-botv /auto-filter-botv
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /auto-filter-botv
fi
cd /auto-filter-botv
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
