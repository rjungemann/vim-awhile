function! s:Awhile(command)
  if v:servername == ""
    echo "Requires Vim to be running in server mode."
    return
  endif

  let l:awhile_path = fnamemodify(resolve(expand('<sfile>:p')), ':h') . "/awhile"
  let l:full_command = l:awhile_path . " run '" . $_ . "' '" . v:servername . "' '" . a:command . "'"
  execute "silent !" . system(l:full_command)
endfunction
command! -complete=shellcmd -nargs=+ Awhile call s:Awhile(<q-args>)

