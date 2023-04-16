for dir in ./*/;
do
    echo "\n>>>>>>>"
    cd $dir
    pwd
    echo "-------"
    git -C . rev-parse 2>/dev/null;
    exit_code=$(echo $?)
    if [ "$exit_code" -eq 0  ]; then
        git pull -r --autostash
    else
        echo "NOT A GIT REPOSITORY :("
    fi
    cd ../
    echo ">>>>>>>"
done
