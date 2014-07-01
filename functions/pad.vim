"""
" Returns the supplied string padded with spaces to the specified length,
" adding whitespace to the left or right side as preferred.
"
" @param    string    str     The string to be padded.
" @param    string    len     The length to pad the string to.
" @param    string    side    The side to add the whitespace to: 'left' or 'right'.
"
" @return   string            The input string, padded.
"""
function! s:Pad(str, len, side)
  if a:side ==# 'left'
    return repeat(' ', a:len - len(a:str)) . a:str
  elseif a:side ==# 'right'
    return a:str . repeat(' ', a:len - len(a:str))
  endif

  return a:str
endfunction
