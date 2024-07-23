

" fvim字体
" 字体						横竖线	文件图标	连字	补全图标	F4-icon
" 默认字体					yes		yes			no		yes			no
" FiraCode Nerd Font Mono	yes		yes			yes		yes			yes
" FiraCode NF Retina		yes		yes			yes		yes			no
" Cascadia Code				yes		yes			yes		yes			no
" IntelOne Mono				no		yes			no		yes			no
" JetBrains Mono			yes		yes			yes		yes			no
" Hack						yes		yes			no		yes			no
" 等距更纱黑体 SC			yes		yes			yes		yes			no
" 终端更纱黑体-简 Nerd		yes		yes			yes		yes			yes
" Maple Mono SC NF			yes		yes			yes		yes			no
" Maple Mono				yes		yes			yes		yes			no
" 霞鹜文楷等宽 GB			yes		no			no		yes			no


" :NvimWebDeviconsHiTest


if exists('g:fvim_loaded')
	" good old 'set guifont' compatibility with HiDPI hints...
	if g:fvim_os == 'windows' || g:fvim_render_scale > 1.0
		" set guifont=FiraCode\ Nerd\ Font\ Mono:h16
		" set guifont=FiraCode\ NF\ Retina:h16
		" set guifont=Cascadia\ Code:h16
		" set guifont=IntelOne\ Mono:h16
		" set guifont=JetBrains\ Mono:h16
		" set guifont=Hack:h16
		" set guifont=等距更纱黑体\ SC:h18
		" set guifont=终端更纱黑体-简\ Nerd:h18
		" set guifont=Maple\ Mono\ SC\ NF:h16
		" set guifont=Maple\ Mono:h16
		set guifont=霞鹜文楷等宽\ GB:h18

		" 只有这些支持中文
		" set guifontwide=等距更纱黑体\ SC:h18
		" set guifontwide=终端更纱黑体-简\ Nerd:h18
		" set guifontwide=Maple\ Mono\ SC\ NF:h16
		set guifontwide=霞鹜文楷等宽\ GB:h18
	else
		set guifont=Cascadia\ Code:h28
	endif

	" Ctrl-ScrollWheel for zooming in/out
	nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
	nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
	nnoremap <A-CR> :FVimToggleFullScreen<CR>


	FVimCursorSmoothMove v:true
	FVimCursorSmoothBlink v:true
endif

