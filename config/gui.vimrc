g:markdown_preview_auto=1

" ------------ GVIM ------------
if has("gui_running")
    "set guioptions-=m  " remove menu bar
    set guioptions-=T  " remove toolbar
    set guioptions-=r  " remove right-hand scroll bar
    set guioptions-=L  " remove left-hand scroll bar

    " GUI is running or is about to start.
    " Maximize gvim window.
    set lines=999 columns=999
end

