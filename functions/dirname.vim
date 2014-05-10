"""
" Given a string containing the path of a file or directory,
" returns the parent directory's path.
"
" @param    string    path    A file or directory path.
"
" @return   string            The parent directory's path.
"""
function! s:dirname(path)
  return fnamemodify(a:path, ':h')
endfunction
