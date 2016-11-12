#! /usr/local/bin/zsh 

function sdsync() {
	echo "################################################################################";
	date;
	rsync -ah --delete --stats --ignore-errors --force /Users/alexandre/Drive /Volumes/MacSD/;
	echo '\n';
	rsync -ah --delete --stats --ignore-errors --force /Users/alexandre/Documents /Volumes/MacSD/;
	echo '\n\n';

}

sdsync >> /Users/alexandre/logs/sdsync.log