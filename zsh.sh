#!/bin/zsh

NPMSCRIPTEXEC_PATH=$(dirname $(realpath $0))

command_not_found_handler() {
  $NPMSCRIPTEXEC_PATH/find-npm-script.sh $1
}
