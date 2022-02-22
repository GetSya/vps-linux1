_login=$(grep "command failed" < .ngrok.log)

if [[ -z "$_login" ]]; then
    echo $(grep -o -E "tcp://(.+)" < .ngrok.log)
else
    echo "$_login"
    exit 4
fi
