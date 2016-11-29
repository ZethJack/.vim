" vim:fdm=marker
" Set light or dark according to time of the day {{{
if strftime("%H") >= 5 && strftime("%H") <= 17
	set background=light
else
	set background=dark
endif
" }}}
