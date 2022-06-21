vnoremap < <gv " Reselect visual selection after indenting
vnoremap > >gv " Reselect visual selection after de-indenting

if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.undodir


" ALE configurations
let g:ale_linters = {'python': ['flake8', 'pydocstyle', 'bandit', 'mypy', 'pylint']}
" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'python': ['black', 'isort'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_completion_autoimport = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
