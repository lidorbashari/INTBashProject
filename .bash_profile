USERNAME=$(whoami)
echo "Hello $USERNAME"

COURSE_ID="__REPO_NAME__"

if [ -e ".token" ]; then
PREMTOKEN=$(stat -c %a ".token")
if [ "$PREMTOKEN" -ne "600" ] ;  then
echo "Warning: .token file has too open permissions"
fi
fi

umask 006
echo umask
export PATH="$PATH:/home/$USERNAME/usercommands"

echo "the date is:";date --iso-8601=seconds

alias ltxt='ls *.txt'

if [ -d "tmp" ]; then
rm -rf ~/tmp/*
echo "all files are removed"
else
mkdir tmp
fi

sudo lsof -i :8080

