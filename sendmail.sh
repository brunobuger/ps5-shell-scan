#!/bin/bash
# set -x

ARGS=$(xargs echo  $(perl -anle 's/^[^:]+//g && s/:\s+//g && print' email.conf) < /dev/null)
set -- $ARGS "$@";

user=$(cat email.conf | grep user | awk -F':' '{ print $2 }' | xargs)
pass=$(cat email.conf | grep pass | awk -F':' '{ print $2 }' | xargs)
smtp=$(cat email.conf | grep server | awk -F':' '{ print $2 }' | xargs)
port='465';
rcpt='brunobuger@gmail.com';

email_content='From: "Bruno Buger" <'"${user}"'>
To: "Gmail" <'"${rcpt}"'>
Subject: PS5 '"${user}"' to Gmail
Date: '"$(date)"'

Hi Gmail,
'"${user}"' is sending email to you and it should work.
Regards
';


echo "$email_content" | curl --ssl-reqd \
    --url "smtps://${smtp}:${port}" \
    --user "${user}:${pass}" \
    --mail-from "${user}" \
    --mail-rcpt "${rcpt}" \
    --upload-file - # email.txt


if [[ $? == 0 ]]; then
    echo;
    echo 'Email sent.';
else
    echo "curl error code $?";
    man curl | grep "^ \+$? \+"
fi