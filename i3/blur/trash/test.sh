# gist: to check whether an app is installed or not. If its not installed, then it will echo 
# ----------------------------------------------------------------------------------------------

main(){
    # the app name
    app="drawio"

    # command to check whether the app is installed or not
    cmd=$(which $app)

    # if the app is not installed then echo correspondingly
    if [[ ${cmd} = "" ]]; then
        echo "$app is not installed."
        # notify-send -i /home/anup/Dropbox/ubuntu_DIY/blur/error.jpeg "$app is not installed."
    else
        # notify-send "aaa"
        # comment="$app is not installed. \n\nUse: sudo apt-get install drawio."
        $(notify-send -i /home/anup/Dropbox/ubuntu_DIY/i3/blur/error.jpeg echo comment)
        # echo "$app is installed."
    fi
}

main
