" autoload/epiheader.vim
"
" made by Alexandre Sauner, based off x4m3's work

let s:comStyles = {
            \'make': {'1': '##', '2': '##', '3': '##'},
            \'c': {'1': '/*', '2': '**', '3': '*/'},
            \'cpp': {'1': '/*', '2': '**', '3': '*/'},
            \'python': {'1': '#!/usr/bin/env python3\n##', '2': '##', '3': '##'},
            \}

" check if current filetype is supported
function! s:CheckFiletype()
    " check dictionary for current filetype
    return has_key(s:comStyles, &filetype)
endfunction

" function to get current year
function! s:GetCurrentYear()
    let currentYear = strftime("%Y")
    return currentYear
endfunction

" function to print epitech's header
function epiheader#addHeader()
    " if checkFiletype() fails, return error
    if !s:CheckFiletype()
        echoerr "Unsupported filetype for Epitech header: " . &filetype
        return
    endif

    let l:com1 = s:comStyles[&filetype]['1']
    let l:com2 = s:comStyles[&filetype]['2']
    let l:com3 = s:comStyles[&filetype]['3']

    let l:let = append(0, l:com1)
    let l:let = append(1, l:com2 . " EPITECH PROJECT, " . s:GetCurrentYear())
    let l:let = append(2, l:com2 . " " . split(substitute(system('pwd'), '\n', '', 'g'), '/')[-1])
    let l:let = append(3, l:com2 . " File description:")
    let l:let = append(4, l:com2 . " " . expand('%:t:r'))
    let l:let = append(5, l:com3)
    let l:let = append(6, "")
    :8
endfunction
