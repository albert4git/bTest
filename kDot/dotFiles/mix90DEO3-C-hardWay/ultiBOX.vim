# This file contains snippets that are always defined. I personally
# have snippets for signatures and often needed texts

# sligthly lower priority than everything else since specialized versions
# should overwrite. The user needs to adjust her priority in her snippets to
# ~-55 so that other filetypes will still overwrite.
priority -60

############RedTestStart#######################
global !p
def list_files():
    files = []
    for f in os.listdir('.'):
        if f.endswith(('.cpp', '.h', '.cc')) and not f.startswith('.'):
            files.append(f)
    return ' '.join(files)
endglobal

#Then, we could call this function when we write other snippets.

snippet myls "list source files" iw
`!p snip.rv = list_files()`     // snip.rv means "snip return value"
endsnippet

############RedTestStart#######################
snippet reqq "require" b
var `!p
def formatVariableName(path):
	lastPart = path.split('/')[-1]
	if lastPart == 'underscore':
		return '_'
	elif lastPart == 'jquery':
		return '$'
	else:
		return re.sub(r'[_\-]', '', lastPart.title())
snip.rv = formatVariableName(t[1])
` = require('${1}');$0
endsnippet

############RedTestStart#######################
snippet wunderClass "class" b
class ${1:Class}{
public:
    // constructors, asssignment, destructor
    $1();
    $1(const $1&);
    $1& operator=(const $1&);
    ~$1();
    $2
private:
    $3
};
endsnippet

############RedTestStart#######################
snippet rct
import React, { Component } from 'react';

class `!p snip.rv = snip.basename` extends Component {
    render() {
    $0
    }
}
endsnippet
############RedTestStart#######################

snippet colog "console.log(...)" b
console.log($0);
endsnippet
############RedTesStopt########################


##############
# NICE BOXES #
##############
global !p
from vimsnippets import foldmarker, make_box, get_comment_format
endglobal

snippet box "A nice box with the current comment symbol" b
`!p
box = make_box(len(t[1]))
snip.rv = box[0]
snip += box[1]
`${1:${VISUAL:content}}`!p
box = make_box(len(t[1]))
snip.rv = box[2]
snip += box[3]`
$0
endsnippet

snippet bbox "A nice box over the full width" b
`!p
if not snip.c:
	width = int(vim.eval("&textwidth - (virtcol('.') == 1 ? 0 : virtcol('.'))")) or 71
box = make_box(len(t[1]), width)
snip.rv = box[0]
snip += box[1]
`${1:${VISUAL:content}}`!p
box = make_box(len(t[1]), width)
snip.rv = box[2]
snip += box[3]`
$0
endsnippet

snippet fold "Insert a vim fold marker" b
`!p snip.rv = get_comment_format()[0]` ${1:Fold description} `!p snip.rv = foldmarker()[0]`${2:1} `!p snip.rv = get_comment_format()[2]`
endsnippet

snippet foldc "Insert a vim fold close marker" b
`!p snip.rv = get_comment_format()[0]` ${2:1}`!p snip.rv = foldmarker()[1]` `!p snip.rv = get_comment_format()[2]`
endsnippet

snippet foldp "Insert a vim fold marker pair" b
`!p snip.rv = get_comment_format()[0]` ${1:Fold description} `!p snip.rv = foldmarker()[0]` `!p snip.rv = get_comment_format()[2]`
${2:${VISUAL:Content}}
`!p snip.rv = get_comment_format()[0]` `!p snip.rv = foldmarker()[1]` $1 `!p snip.rv = get_comment_format()[2]`
endsnippet

##########################
# LOREM IPSUM GENERATORS #
##########################
snippet lorem "Lorem Ipsum - 50 Words" b
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At
vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,
no sea takimata sanctus est Lorem ipsum dolor sit amet.
endsnippet

##########################
# VIM MODELINE GENERATOR #
##########################
# See advice on `:help 'tabstop'` for why these values are set. Uses second
# modeline form ('set') to work in languages with comment terminators
# (/* like C */).
snippet modeline "Vim modeline"
vim`!v ':set '. (&expandtab ? printf('et sw=%i ts=%i', &sw, &ts) : printf('noet sts=%i sw=%i ts=%i', &sts, &sw, &ts)) . (&tw ? ' tw='. &tw : '') . ':'`
endsnippet




#########
# DATES #
#########
snippet date "YYYY-MM-DD" w
`!v strftime("%Y-%m-%d")`
endsnippet

snippet ddate "Month DD, YYYY" w
`!v strftime("%b %d, %Y")`
endsnippet

snippet diso "ISO format datetime" w
`!v strftime("%Y-%m-%d %H:%M:%S%z")`
endsnippet

snippet time "hh:mm" w
`!v strftime("%H:%M")`
endsnippet

snippet datetime "YYYY-MM-DD hh:mm" w
`!v strftime("%Y-%m-%d %H:%M")`
endsnippet

snippet todo "TODO comment" bw
`!p snip.rv=get_comment_format()[0]` ${2:TODO}: $0${3: <${4:`!v strftime('%d-%m-%y')`}${5:, `!v g:snips_author`}>} `!p snip.rv=get_comment_format()[2]`
endsnippet

##########
#  Misc  #
##########
snippet uuid "Random UUID" w
`!p if not snip.c: import uuid; snip.rv = uuid.uuid4()`
endsnippet

# vim:ft=snippets: