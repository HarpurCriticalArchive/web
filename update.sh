#!/bin/bash
# Multimarkdown to HTML converter and Drupal uploader
# this script requires no arguments
# include customisations
# change WD to directory of this script
cd "$(dirname "$0")"
if [ -e "custom.sh" ]; then 
  source custom.sh
else
  echo "Missing custom.sh file!"
  exit
fi
if [ ${#files[@]} -ne ${#nids[@]} ]; then
  echo "files and nids arrays must be of the same length!"
  exit
fi
if [ ! -d $htmldir ]; then
  mkdir $htmldir
fi
function swap {
    echo "${1:0:(${#1}-(${#2}+1))}.$3"
}
function update {
tmpname=`swap "$1" "md" "tmp"`
htmlname=`swap "$1" "md" "html"`
if [ "$os" = "Darwin" ]; then
  mdmoddate=`stat -f %m "$1"`
elif [ "$os" = "Linux" ]; then
  mdmoddate=`stat -c %Y "$1"`
else
  echo "Unknown OS: $os"
  exit
fi
if [ -e "./$htmldir/$htmlname" ]; then
  if [ "$os" = "Linux" ]; then 
    htmlmoddate=`stat -c %Y "./$htmldir/$htmlname"`
  elif [ "$os" = "Darwin" ]; then
    htmlmoddate=`stat -f %m "./$htmldir/$htmlname"`
  fi
else
  htmlmoddate=0
fi
if [ "$htmlmoddate" -lt "$mdmoddate" ]; then
# convert special characters to UTF-8
sed -f /dev/stdin "$1" > "$tmpname" << QUOTES
    s/ '/ \xE2\x80\x98/g
    /^'/s/'/\xE2\x80\x98/
    s/'/\xE2\x80\x99/g
    s/ "/ \xE2\x80\x9C/g
    /^"/s/"/\xE2\x80\x9C/
    s/"/\xE2\x80\x9D/g
    s/---/\xE2\x80\x94/g
    s/--/\xE2\x80\x93/g
QUOTES
# convert to HTML
/usr/local/bin/multimarkdown "$tmpname" > "./$htmldir/$htmlname"
rm -f $tmpname
# now send the html to Drupal
# write command file for postgres to temp.sql
cat ./$htmldir/$htmlname > /tmp/upload
# change \n to \r (Drupal likes this)
awk 1 ORS='\\r' /tmp/upload
# prepare postgres command file
# don't execute backticks here!
cat  << PSQL > temp.sql
\set content \`cat upload\`
update field_data_body set body_value = :'content' where entity_id = $2;
PSQL
echo "\nuploading $htmlname to remote site"
scp /tmp/upload temp.sql $remotesite:
ssh $remotesite "psql -w -U $dbuser -f temp.sql $dbname"
fi
}
for i in "${!files[@]}"; do
  update ${files[$i]} ${nids[$i]}
done
# now update the images
# all the images referred to in the mmd files must be on the server too
# just put them into the about/images directory
echo "updating images"
rsync -t ./$htmldir/images/*.png ./$htmldir/images/*.gif ./$htmldir/images/*.jpg $remotesite:/var/www/images/$htmldir/
echo "clearing caches"
ssh $remotesite "drush -r $webroot cache-clear all"

