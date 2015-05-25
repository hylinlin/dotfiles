vim indent file
" language:   sass
" maintainer: tim pope <vimnospam@tpope.org>
" last change:    2010 may 21

if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal autoindent sw=2 et
setlocal indentexpr=getsassindent()
setlocal indentkeys=o,o,*<return>,<:>,!^f

" only define the function once.
if exists("*getsassindent")
    finish
endif

let s:property = '^\s*:\|^\s*[[:alnum:]#{}-]\+\%(:\|\s*=\)'
let s:extend = '^\s*\%(@extend\|@include\|+\)'

function! getsassindent()
    let lnum = prevnonblank(v:lnum-1)
    let line = substitute(getline(lnum),'\s\+$','','')
    let cline =
    substitute(substitute(getline(v:lnum),'\s\+$','',''),'^\s\+','','')
    let lastcol = strlen(line)
    let line = substitute(line,'^\s\+','','')
    let indent = indent(lnum)
    let cindent = indent(v:lnum)
    if line !~ s:property && line !~ s:extend && cline =~
        s:property
        return indent + &sw
        "elseif line =~ s:property && cline !~ s:property
        "return indent - &sw
    else
        return -1
    endif
endfunction

" vim:set sw=2:
