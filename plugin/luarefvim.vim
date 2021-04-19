" luarefvim plugin

" initial setup: avoid loading more than once
if exists("g:loaded_luarefvim")
	finish
endif

" mappings: enabled by default
if !exists("g:luarefvim_disable_keybindings")
  vnoremap <silent> <unique> <Leader>lr y:call <SID>LookUp('<c-r>"')<CR>
  nnoremap <silent> <unique> <Leader>lr  :call <SID>LookUp(expand("<cword>"))<CR>
  noremap <silent> <unique> <Leader>lc :help luaref<CR>
endif

function <SID>LookUp(str)
	if a:str == "--" "comment?
		silent! execute ":help lrv-comment"
	elseif a:str == ""
		silent! execute ":help luaref"
	else
		silent! execute ":help lrv-" . a:str
		if v:errmsg != ""
			echo "luarefvim: \`" . a:str . "\' not found"
		endif
	endif
endfunction

let g:loaded_luarefvim = 1
