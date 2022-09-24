#!/usr/bin/env bash
#ls ~/.* -dF | grep -v ".*/" | `
if [ ! -d ~/profile];then
	mkdir ~/profile
fi
#cp ~/.* ~/profile
for dotfile in $(ls -da ~/.*)
do
	if [ -f ${dotfile} ] && [ ! -f ~/profile/${dotfile##*/} ];then
		cp ${dotfile} ~/profile
		[ -f ~/profile/${dotfile##*/} ]	echo "${dotfile} has been copied"
	fi
done

for filename in $(ls -a ~/profile/.[^.]*)
do
	filename=${filename##*/}
	ln -sf ~/profile/$filename ~/$filename
	echo 'file' \"$filename\"  "has been linked"
done
