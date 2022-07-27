"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
    let s:input_status = system("fcitx5-remote")
    if s:input_status == 2
        let g:input_toggle = 1
        let l:a = system("fcitx5-remote -c")
    endif
endfunction
