#!/bin/sh
cat package.json | grep -qi $1
if [ $? -eq 0 ]
then
  echo "Executing $1 from package.json scripts"
  npm run $1
else
  exit 127
fi
