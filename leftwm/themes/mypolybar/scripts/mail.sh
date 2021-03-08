#!/usr/bin/env bash

username="p"
password="r"

mailcount=$(curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" | grep -oPm1 "(?<=<fullcount>)[^<]+")

echo $mailcount
