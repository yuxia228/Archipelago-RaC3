#!/bin/bash

SCRIPT_DIR=$(cd `dirname $0` && pwd)
GAMENAME=rac3
cd $SCRIPT_DIR
cp -r ./worlds/${GAMENAME} ./
zip -qo -r ./${GAMENAME}.apworld ./${GAMENAME}
rm -rf ./${GAMENAME}

