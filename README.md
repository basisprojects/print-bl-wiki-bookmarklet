# print-bl-wiki-bookmarklet
Bookmarklet to print Wiki pages of backlog.com.

## How it started.
Wiki in backlog.com already have an option to print PDF, however, 
it works on server-side and create old fashioned print in stead of good looking what we see.

This bookmarklet let you print Wiki page directly without unnecessary elements, through your
browser.

## How to use
1. Create new bookmark on your browser, any page is ok. 
1. Edit the bookmark with URL below starts with 'javascript:'
1. Change the name of bookmark with what you like, for example, "Print Backlog's Wiki", etc.

## Bookmarklet URL

    javascript:(function(){if(location.href.match(/\.backlog\./)){document.querySelectorAll('.content-main>*').forEach(function(e){if(e.id=='wikicard'){e.querySelectorAll('.file-attach').forEach(function(f){f.style='display:none'})}else{e.style='display:none'}});window.print();location.reload()}})()

## Customization

"src/print-bl-wiki-bookmarklet.js" is plain javascript. You can change this as you want,
then bash command "to_boomarklet.sh" help you get new URL.

    bash to_bookmarklet.sh src/print-bl-wiki-bookmarklet.js

You can exchange URL of bookmark with the output of command.

## Author
basis MATSUOKA Hiroshi <matsuboyjr@gmail.com>
