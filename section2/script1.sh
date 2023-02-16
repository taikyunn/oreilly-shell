#!/bin/bash
while [ -n "$1" ]
do
  case "$1" in
    -a) echo "-a option used" ;;
    -b) echo "-b option used" ;;
    -c) echo "-c option used" ;;
    *) echo "option $1 not an option" ;;
  esac
  shift
done
