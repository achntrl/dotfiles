#! /usr/local/bin/zsh 

# Rsync folders between the mac and an SD card to have backups
function sdsync() {
	echo "################################################################################";
	date;
	rsync -ah --delete --stats --ignore-errors --force /Users/alexandre/Drive /Volumes/MacSD/;
	echo '\n';
	rsync -ah --delete --stats --ignore-errors --force /Users/alexandre/Documents /Volumes/MacSD/;
	echo '\n';
	rsync -ah --delete --stats --ignore-errors --force /Users/alexandre/Pictures /Volumes/MacSD/;
	echo '\n\n';

}

sdsync >> /Users/alexandre/logs/sdsync.log