writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
    echo expected 2 arguments, got $#
    exit 1
fi
if [ ! -d $writefile ]
then
    echo path $writefile does not exist. Creating it...
    mkdir -p $(dirname $writefile)
fi

echo $writestr > $writefile

if [ $? -ne 0 ] 
then
    echo failed to write to $writefile
    exit 1
fi