#!/usr/bin/env bash

username="philgiddyboy@googlemail.com"
password="revelation00end"

mailcount=$(curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" | grep -oPm1 "(?<=<fullcount>)[^<]+")

echo $mailcount
