" ==================================================
" Tagbar Mapping
" ==================================================

nnoremap <F4> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:tagbar_type_html = {
      \ 'ctagstype' : 'html',
      \ 'kinds' : [
      \ 'a:anchors',
      \ 't:tag',
      \ 'i:identifiers',
      \ 'c:classes',
      \ 'h:header',
      \ ],
      \ }

let g:tagbar_type_c = {
      \ 'ctagstype' : 'c',
      \ 'kinds': [
      \ 'c:classes',
      \ 'd:macro definitions',
      \ 'e:enumerators',
      \ 'f:function definitions',
      \ 'g:enumeration names',
      \ 'l:local variables',
      \ 'm:members',
      \ 'n:namespaces',
      \ 'p:function prototypes',
      \ 's:structure names',
      \ 't:typedefs',
      \ 'u:union names',
      \ 'v:variable definitions',
      \ 'x:external and forward variable declarations',
      \ 'h:headers',
      \],
      \ }

let g:tagbar_type_make = {
      \ 'kinds':[
      \ 'm:macros',
      \ 't:targets'
      \ ]
      \}

let g:tagbar_type_proto = {
      \'kinds': [
      \'m:message',
      \'v:variable',
      \],
      \}

" let g:tagbar_type_javascript = {
      " \ 'ctagtype': 'js',
      " \ 'kinds': [
      " \ 'o:object',
      " \ 'f:function',
      " \ 's:string',
      " \ 'a:array',
      " \ 'b:boolean',
      " \ 'n:number',
      " \ 'v,variable'
      " \]
      " \}
