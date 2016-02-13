function IndentCArgs()
    normal! [(
    let ocol = col(".")
    execute "normal!ea<cr>"
    let diff = ( ocol - col(".") ) 
    execute "normal!" . ( diff - 1 ) . "i "
endfunction
