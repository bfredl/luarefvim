# luarefvim

This plugin is forked from [the vim-scripts repository](https://github.com/vim-scripts/luarefvim) and is a Vim help file containing references for *Lua 5.1 only*, and it is -- with a few exceptions and adaptations -- a copy of the Lua 5.1 reference manual.

Similarly to CRefVim (from where a lot of ideas were drawn), you can easily search for references for words under the cursor, visually selected words, and manual contents. There are several default keybindings enabled by the plugin for accomplishing this:

```vim
vnoremap <silent> <unique> <Leader>lr y:call <SID>LookUp('<c-r>"')<CR>
nnoremap <silent> <unique> <Leader>lr  :call <SID>LookUp(expand("<cword>"))<CR>
noremap <silent> <unique> <Leader>lc :help luaref<CR>
```

If you wish to disable these keybindings, please set the following global variable in your Vim config:
```vim
let g:luarefvim_disable_keybindings = 1
```
