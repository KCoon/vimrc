# vimrc
only my vim config


<!-- vim-markdown-toc GFM -->
* [Shortcuts](#shortcuts)
  * [Python](#python)
  * [C++](#c)
* [Commands](#commands)
* [Plugins](#plugins)
  * [Vundle](#vundle)
  * [dzo](#dzo)
  * [YouCompleteMe](#youcompleteme)
  * [fugitive](#fugitive)
  * [vim-markdown-toc](#vim-markdown-toc)
  * [UltiSnips](#ultisnips)
  * [vim-snippets](#vim-snippets)

<!-- vim-markdown-toc -->

## Shortcuts

### Python
`<F2>` Doxygen

`<F3>` Show Doxygen HTML-Docu in Default-Browser

`<F4>` Run Python2.7

`<F5>` Run Python3.6

`<F6>` Run IPython5.2 (Python3.6)

`<F9>` GetDoc

`<F12>` Beautify with AutoPep8

`<S-F12>` Show AutoPep8 diff

### C++
`<F2>` Doxygen

`<F3>` Show Doxygen HTML-Docu in Default-Browser

`<F5>` Run

`<F6>` Compile

`<F7>` Recompile

`<F9>` GetDoc

## Commands
command          | description
-----------------|------------
Number           | Numbering lines of file
Numberf <format> | Numbering lines of file with given format <br />e.g. Numberf "N%04d "
Nonumber         | Removes numbering. Works only for digits only formats


## Plugins

### Vundle

Plugin manager for vim  (https://github.com/VundleVim/Vundle.vim)

### dzo
A dark color scheme for vim (https://github.com/Blevs/vim-dzo)

### YouCompleteMe
A code-completion engine for Vim (https://github.com/Valloric/YouCompleteMe)

To trigger semantic completion without language depending triggers like `.` or `->` press `<S-BAR>`.

### fugitive
Git wrapper for vim (https://github.com/tpope/vim-fugitive)

fugitive cmd         | git cmd
---------------------|---------
`:Gwrite`            | Git add %
`:Gread`             | Git checkout %
`:Gremove`           | Git rm %
`:Gmove target_path` | Git mv % target\_path. target\_path is relative to %.<br>If used /target\_path, / is the root of the repository
`:Gcommit`           | Git commit. Opens horizontal split buffer for commit message
`:Gblame`            | Git blame %. Opens vertical split showing who edited which line when.

### vim-markdown-toc

Autogenerate table of contents in markdown files. (see https://github.com/mzlogin/vim-markdown-toc )

Place cursor to position where to append toc.

`:GenTocGFM`   
Generate table of contents in github flavoured markdown.

`:GenTocRedcarpet`  
Generate table of contents in redcarped style markdown.

Toc will auto updated when saving file.

### UltiSnips

Snippet engine for vim. (https://github.com/SirVer/ultisnips)

This plugin works nicely with YouCompleteMe but the default key configuration has to be changed to avoid collion with YCM. The
following config works great with neo-layout (http://neo-layout.org)

`<C-Tab>` list all snippets for current language

`<C-RIGHT>` expand snippet

`<Right>` after expand, jump forwart

`<Left>` after expand, jump backward

If you don't use neo (for whatever reason), use `<c-j>` and `<c-k>` in place of the arrow keys.

### vim-snippets

Provided snippet files used by UltiSnips (https://github.com/honza/vim-snippets)

