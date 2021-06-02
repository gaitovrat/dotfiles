if (has('nvim'))
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc
endif

" _____PLUGINS_____
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall -sync | source $MYVIMRC
endif

nmap <leader>lo :so ~/.config/nvim/init.vim<cr>

call plug#begin('~/.vim/bundle')
Plug 'ntk148v/vim-horizon'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-fugitive'
Plug 'connorholyday/vim-snazzy'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Plugin keybinding
nmap <leader>pi :PlugInstall<cr>
nmap <leader>pu :PlugUpdate<cr>
nmap <leader>pc :PlugClean<cr>

nmap <leader>ot :NERDTree<cr>

nmap gss <Plug>(easymotion-overwin-f)

nmap <leader>ff :Files<CR>
nmap <leader>gf :GFiles<CR>

if has('termguicolors')
    set termguicolors
endif
colorscheme horizon
let g:lightline = {'colorscheme' : 'horizon'}
