filesdir=$1
searchstr=$2

if [ $# -ne 2 ] 
then
    echo Two parameters must be input, filesdir and searchstr
    exit 1
else
    if [ ! -d $filesdir ]
    then
        echo $filesdir is not a directory in the filesystem
    fi
fi

file_matches=$(grep -rl $filesdir -e $searchstr | wc -l )
line_matches=$(grep -r $filesdir -e $searchstr | wc -l)

echo The number of files are $file_matches and the number of matching lines are $line_matches