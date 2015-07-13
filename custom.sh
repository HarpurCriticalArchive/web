htmldir=about
dbuser=postgres
dbname=drupaldb
webroot=/var/www/harpur
os=`uname`
remotesite=charles-harpur.org
# these are the files in the same directory as this script (update.sh)
files=("about.md" "overview.md" "editorial-policy.md" "biography.md" "permissions.md" "technical-design.md" "challenges.md" "sources.md" "poems-in-anthologies.md")
# these are the Drupal node ids for the files (same order)
# you can get them from drupal by going to that opage and noting down 
# the nid number immediately after "node" in the url bar
# the nids must be in the same order as the file list and the two 
# lists have to be the same length
nids=(30 31 32 33 34 35 36 37 38)

