#!/bin/bash
curl -F "docid=english/harpur/sources/about" -F "about=@about.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/sources/mss" -F "mss=@mss.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/sources/letters" -F "letters=@letters.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/sources/newspapers" -F "newspapers=@newspapers.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/sources/editions" -F "editions=@editions.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/sources/anthologies" -F "anthologies=@anthologies.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/about/editorial" -F "editorial=@editorial-policy.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/about/challenges" -F "challenges=@challenges.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/about/overview" -F "overview=@overview.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/about/permissions" -F "permissions=@permissions.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/about/biography" -F "biography=@biography.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/about/technical" -F "technical=@technical-design.md;type=text/x-markdown" http://charles-harpur.org/misc/
curl -F "docid=english/harpur/home" -F "home=@home.md;type=text/x-markdown" http://charles-harpur.org/misc/
echo "updating images"
rsync -t ./about/images/*.png ./about/images/*.jpg charles-harpur.org:/var/www/images/about/
echo "done!"
