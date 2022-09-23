#!/usr/bin/env bash
#ls ~/.* -dF | grep -v ".*/" | `
if [ ! -d ~/profile];then
	mkdir ~/profile
fi
cp ~/.* ~/profile
for filename in $(la ~/profile)
do
	echo $filename
	ln -sf ~/profile/$filename ~/$filename
done
