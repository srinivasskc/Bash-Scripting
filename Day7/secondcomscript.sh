#! /bin/bash

source firstcomscript.sh
echo $MYLOC


: "
When i execute this ./secondcomscript.sh
the source is executed and navigated to it, and fetched the details.
and echo $MYLOC will print the variable value from ./firstcomscript.sh

MYLOC="/home"
export MYLOC

"