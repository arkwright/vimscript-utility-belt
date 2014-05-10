"""
" Trims the specified character from the beginning and the end of the
" specified string. Trims all repeats of the specified character.
" Returns the resulting string.
"
" If called without a characters argument, trims whitespace.
"
" @param    string    str     The string to be trimmed.
" @param    string    char    The character to remove from the string.
"
" @return   string            The result.
"""
function! s:trim(str, ...)
  let l:char = '\s'

  if a:0 ==# 1
    let l:char = a:1
  endif

  " \m   sets Vim's nomagic option for this regex. This ensures portability of the regex.
  " ^    matches the beginning of the string.
  " *    matches as many as possible of the preceding character
  " \(   begins a subexpression
  " .    matches any character
  " \{-} matches the previous character as few times as possible
  " \)   ends a subexpression
  " *    matches as many as possible of the preceding character
  " $    matches the end of the string
  let l:regex = '\m^' . l:char . '*\(.\{-}\)' . l:char . '*$'

  " \1   replaces the string with the first subexpression in the match
  let l:result = substitute(a:str, l:regex, '\1', '')

  return l:result
endfunction
