" Vim global plugin for un-/commenting lines
" $Id: ToggleComment.vim,v 1.6 2004/03/28 10:14:22 Andreas Exp $
" Maintainer: Andreas Völter <lazy.fun.prog@web.de>

"       <!-- Example usage: with mapping below and typing ,< you get this line -->
" :noremap <silent> ,< :call CommentLinePincer('<!-- ', ' -->')<CR>+

" Prevent duplicate loading
if exists("g:loaded_toggle_comment")
    echo "ToggleComment.vim not loaded"
    finish
endif
let g:loaded_toggle_comment= 1

if exists("g:ToggleCommentAtLineBeginning") && g:ToggleCommentAtLineBeginning == 1
    let s:go_to_comment_beginning = '|i'
else
    let s:go_to_comment_beginning = 'I'
endif

" Comment this line at ^
function! CommentLineToEnd(commentLeader)
   	let save_cpo   = &cpoptions
   	let save_paste = &paste
   	set cpo&vim
    set paste
    let escCommentLeader = escape(a:commentLeader, '^[.*\~]$')
    if getline(".") =~ '^\s*' . escCommentLeader
        execute "normal ^" . strlen(a:commentLeader) . "x"
    else
        execute "normal " . s:go_to_comment_beginning . a:commentLeader . "\<ESC>"
    endif
   	let &cpo   = save_cpo
   	let &paste = save_paste
endfunction

" Comment this line at ^ and $
function! CommentLinePincer(commentLeader, commentTrailer)
   	let save_cpo   = &cpoptions
   	let save_paste = &paste
   	set cpo&vim
    set paste
    let escCommentLeader = escape(a:commentLeader, '^[.*\~]$')
    let escCommentTrailer = escape(a:commentTrailer, '^[.*\~]$')
    if getline(".") =~ '^\s*' . escCommentLeader . '.*' . escCommentTrailer . '$'
        execute "normal ^" . strlen(a:commentLeader) . "x$" . strlen(a:commentTrailer) . "hl" . strlen(a:commentTrailer) . "x"
    else
        execute "normal " . s:go_to_comment_beginning . a:commentLeader . "\<ESC>" . "A" . a:commentTrailer . "\<ESC>"
    endif
   	let &cpo   = save_cpo
   	let &paste = save_paste
endfunction

" vim:ts=4 sw=4 et ff=unix
