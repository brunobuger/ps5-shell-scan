#!/bin/bash
# set -x

STORE=$1
ARGS=$(xargs echo  $(perl -anle 's/^[^:]+//g && s/:\s+//g && print' email.conf) < /dev/null)
set -- $ARGS "$@";

user=$(cat email.conf | grep user | awk -F':' '{ print $2 }' | xargs)
pass=$(cat email.conf | grep pass | awk -F':' '{ print $2 }' | xargs)
smtp=$(cat email.conf | grep server | awk -F':' '{ print $2 }' | xargs)
port='465';

email_content='From: "Bruno Buger" <'"${user}"'>
To: "Gmail" <'"${user}"'>
Subject: PS5 stock at '"${STORE}"'
Date: '"$(date)"'

Hi Gmail,
'"${user}"' is sending email to you and it should work.
Regards
';


echo "$email_content" | curl --ssl-reqd \
    --url "smtps://${smtp}:${port}" \
    --user "${user}:${pass}" \
    --mail-from "${user}" \
    --mail-rcpt "${user}" \
    --upload-file - # email.txt


if [[ $? == 0 ]]; then
    echo;
    echo 'Email sent.';
else
    echo "curl error code $?";
    man curl | grep "^ \+$? \+"
fi