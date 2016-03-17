#!/bin/bash

bash --version | grep "version 4" > /dev/null
if [ $? -eq 0 ]
then
  NPMSCRIPTEXEC_PATH="$(dirname ${BASH_SOURCE[0]})"

  command_not_found_handle() {
    $NPMSCRIPTEXEC_PATH/find-npm-script.sh $1
    if [ $? -eq 127 ]
    then
      echo "bash: $1: command not found"
      exit 127 2> /dev/null
    fi
  }
else
  BASH_VERSION=$(bash --version | head -n 1 | cut -d ' ' -f 4)
  echo "ERROR"
  echo "You have an old version of bash (\"$BASH_VERSION\" which is below version 4.X) which is not supported at this moment"
  echo "If you know a way to get command_not_found_handle to work in versions below 4, please let me know"
  echo "https://github.com/victorbjelkholm/npm-scripts-exec/issues/new"
fi
