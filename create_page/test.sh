mkdir "$(dirname "$0")/temp"
cd "$(dirname "$0")/temp" || exit
rm -r ./*
mason make create_page --name 'test me'
