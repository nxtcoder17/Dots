" Nvim LSP
lua <<EOF
    require'lspconfig'
    require'lspconfig'.vimls.setup{on_attach=require'completion'.on_attach}
    require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
    require("lspconfig").sumneko_lua.setup{
        on_attach=on_attach_vim,
        settings = {
            Lua = {
                runtime = { version = "LuaJIT", path = vim.split(package.path, ';'), },
                diagnostics = { enable = true, globals = { "vim" } }
            }
        }
    }

    vim.o.completeopt = "menuone,noinsert,noselect"
EOF

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
nnoremap <M-CR> :lua vim.lsp.buf.code_action()<CR>


" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

