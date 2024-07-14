USERNAME=$(whoami)
echo "Hello $USERNAME"
export COURSE_ID
COURSE_ID="__REPO_NAME__"    #make a variable with content

if [ -e ".token" ]; then    #check if ".token" are existed
PREMTOKEN=$(stat -c %a ".token")
if [ "$PREMTOKEN" -ne "600" ] ;  then
echo "Warning: .token file has too open permissions"
fi
fi

export PATH="$PATH:/home/$USERNAME/usercommands"      #add a ptah with usermane

echo "the date is:";date --iso-8601=seconds      #print date

alias ltxt='ls *.txt'    #make a alias that find all file with *.txt

if [ -d "tmp" ]; then     #check tmp existed and the content
rm -rf ~/tmp/*
echo "all files are removed"
else
mkdir tmp
fi

sudo lsof -i :8080      #kill the process that is bound to port 8080

