
inoreabbrev <buffer> iff if:<esc>i
inoreabbrev <buffer> fiin for i in:<esc>i
inoreabbrev <buffer> <expr> if repeat("\<bs>", strlen(matchstr(getline('.'), 'else\zs\s*if'))).'if'

