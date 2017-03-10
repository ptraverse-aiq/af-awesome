#!

inotifywait -mqr -e close_write "atp2.js" | while read line
do
  echo "atp2.js written, minifying ... "
  `java -jar yuicompressor-2.4.8.jar atp2.js -o atp2.min.js`
done
