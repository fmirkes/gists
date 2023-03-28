# show file history
git log --all --full-history -- "**/file.*"

# get all author mail addresses
git --no-pager log --pretty=format:'%ae' | sort -u
