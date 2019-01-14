# VsVim

<img src="images/vimlogo.png" width="50px" />

## Standard Vim

### Movement

shortcut   | command
:---------:| ---------------------
`<0>`      | first character of line
`<+>`      | first character of next line
`<->`      | first character of prev line
`<w>`      | next begin of word
`<b>`      | prev word
`<e>`      | next end of word
`<gg>`     | first line
`<G>`      | last line
`<*>`      | search forward word under cursor
`<#>`      | search backward word under cursor
`<}>`      | forward by paragraph
`<{>`      | backward by paragraph
`<%>`      | toggle parenthesis
```<``>``` | last position

### Editing

shortcut| command
:------:|---------------------
`<i>`   | insert
`<I>`   | insert at start of Line
`<a>`   | append
`<A>`   | append at end of line
`<c{m}>`| correct and start insert
`<C>`   | correct until end of line
`<s>`   | delete char under cursor and start insert
`<S>`   | delete line and start insert
`<~>`   | toogle case
`<C-a>` | Increasing number
`<C-x>` | Decreasing number

### Commands

syntax         | command
:-------------:|---------------------
`:s/foo/bar`   | find next foo in line and replace with bar
`:s/foo/bar/g` | find all foo in line and replace with bar
`:%s/foo/bar/g`| find all foo in document and replace with bar

{m} := movement


## VisualStudio and Resharper Extentions

### Normal

shortcut| command										| processor
:------:|---------------------------|:---------:
`<gcc>` | comment										|#R
`<\cc>` | clean											|#R
`<gd>`  | GotoDeclaration						|#R
`<gr>`  | FindUsages								|#R
`<gR>`  | ShowFindResults						|#R
`<gp>`  | PeekDefinition						|VS
`<gb>`  | GotoBase									|#R
`<gi>`  | GotoInheritors						|#R
`<gs>`  | View SolutionExplorer			|VS
`<gf>`  | View FindResults1					|VS
`<ge>`  | GotoRecentEdits						|#R
`<gt>`  | GotoText									|#R
`<gn>`  | GotoFile									|#R
`<gl>`  | LocateInSolutionExplorer	|#R
`<\rr>` | Rename										|#R
`<\bs>` | Build docu Sandcastle			|VS
`<\bd>` | Build docu Doxygen				|VS
`<\e>`  | GotoNextErrorInSolution		|#R
`<\E>`  | GotoPrevErrorInSolution		|#R
`<\w>`  | GotoNextHighlight					|#R
`<\W>`  | GotoPrevHighlight					|#R

### Visual

|shortcut| command           | processor
|:------:|-------------------|:---------:
|`<\re>` | ExtractMethod		 |#R
|`<gc>`  | comment           |#R
