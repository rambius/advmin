#!/usr/pkg/bin/expect -f

if { $argc == 0 } {
    puts "$::argv0 <search query>"
    exit 1
}

spawn lynx https://lite.duckduckgo.com/lite
expect "Search"
send "\t"
send "$argv"
send "\r"
expect "<return>"
send "\r"
interact
