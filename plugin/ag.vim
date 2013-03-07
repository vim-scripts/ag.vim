" NOTE: You must, of course, install ag / the_silver_searcher
command! -bang -nargs=* -complete=file Ag call ag#Ag('grep<bang>',<q-args>)
command! -bang -nargs=* -complete=file AgAdd call ag#Ag('grepadd<bang>', <q-args>)
command! -bang -nargs=* -complete=file AgFromSearch call s:AgFromSearch('grep<bang>', <q-args>)
command! -bang -nargs=* -complete=file LAg call s:Ag('lgrep<bang>', <q-args>)
command! -bang -nargs=* -complete=file LAgAdd call s:Ag('lgrepadd<bang>', <q-args>)
command! -bang -nargs=* -complete=file AgFile call s:Ag('grep<bang> -g', <q-args>)
command! -bang -nargs=* -complete=help AgHelp call s:AgHelp('grep<bang>',<q-args>)
command! -bang -nargs=* -complete=help LAgHelp call s:AgHelp('lgrep<bang>',<q-args>)
