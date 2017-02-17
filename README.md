# vimrc
only my vim config


<!-- vim-markdown-toc GFM -->
* [Shortcuts](#shortcuts)
  * [Help](#help)
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
  * [vim-commentary](#vim-commentary)

<!-- vim-markdown-toc -->

## Shortcuts


### Help
Modified mapping for help is located in vimfiles/ftplugin/help.vim. This mapping is from (http://vim.wikia.com/wiki/Learn_to_use_help#Simplify_help_navigation)

`<CR>` follow link

`<BS>` return from the last jump

`<s>` next subject

`<S>` previous subject

`<o>` next option

`<o>` previous option

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
Explorer         | Opens directory of current file in explorer and select file (windows only)
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
The standard keys `<Tab>` and `<S-Tab>` for selecting completion are remaped for compatibility with [UltiSnips](#ultisnips).

`<Down>` Scroll down in selection list
`<Up>` Scroll up in selection list
`<C-Bar>` Invoke selection list

To trigger semantic completion without language depending triggers like `.` or `->` press `<C-Bar>`.

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

`<Tab>` expand snippet

`<Right>` after expand, jump forwart

`<Left>` after expand, jump backward

If you don't use neo (for whatever reason), use `<c-j>` and `<c-k>` in place of the arrow keys.

### vim-snippets

Provided snippet files used by UltiSnips (https://github.com/honza/vim-snippets)

### vim-commentary

Language specific commenting.

`<gcc>` (un)comment line

`<gcap>` (un)comment paragraph

`<gc>`  (un)comment selection in visual mode

`<gcgc>` uncomment set of adjacent commented lines
