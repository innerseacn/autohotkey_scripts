let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[3 q"
let &t_EI = "\<Esc>[1 q"

augroup myCmds
	au!
	autocmd VimEnter * silent !echo -ne "\e[1 q"
	autocmd VimLeave * silent !echo -ne "\e[5 q"
augroup END
