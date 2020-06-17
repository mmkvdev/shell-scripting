### Shell Script for awesome GIT CRUD's
echo('git branch -r | awk -F/ '/\/PREFIX/{print $2}' | xargs -I % git push origin --delete %')