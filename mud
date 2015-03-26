#!/usr/bin/env bash

if [ $# -gt 0 ]
then
  tt++ profiles/$1.tin
else
  echo Need a profile name:
  ls profiles
fi
