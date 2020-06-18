#!/bin/bash
usage() {
    cat <<__END_OF_USAGE__
NAME
    $(basename $0)

SYNOPSIS
    bash $(basename $0) PATH_TO_JS_SCRIPT

DESCRIPTION
    This converts plain javascript file into single line bookmarklet with removing 
    newlines, spaces, and appending 'javascript:(function(){...})()' around it.

__END_OF_USAGE__
}

if [ -z "$1" ];then
    usage
    exit 1
fi
echo -n 'javascript:(function(){'
grep -v '^//' "$1" | tr -d "\n" | sed -e 's/\s\+//g'
echo -n '})()'
