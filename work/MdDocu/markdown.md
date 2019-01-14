# Markdown Cheatsheed &copy; Sven Langer

## Inline HTML

<img src="images/vimlogo.png" width="50px" />

## Images and emphasizing

Images ~~can~~ *can't* be resized in markdown. **Better** use inline ***html***!

![alternate text](images/Klingelnberg.png)

## Code block
``` csharp
/// <summary>
///		gfm can render C# purfectly
/// </summary>
for(int i=0; i<12; i++)
{
	Console.WriteLine(i.ToString());
}
```

## Math
Here -> $x^2$ <- is a inline MathJax expression.
Next comes a separated expression:
$$E=mc^2$$

## Tables
shortcut| command										| processor
:------:|---------------------------|:---------:
`<gcc>` | comment										|#R
`<gd>`  | GotoDeclaration						|#R
`<gr>`  | FindUsages								|#R

## Bullet list
* item 1
* item 2
	* item 2a

## Numbered list
Don't mind enumeration - just write 1.! Nested listing unfortunately isn't supported well. :cry:
1.  item 1
1.  item 2
 1.  item 2.1

## Blockquotes
> I'll blockquoting ya arse!
> Blockquoting took r jobs!

Hill Billy said.

## Ruler

first paragraph

---
next paragraph


## Emoticons

https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md

:shit: :smile: :thumbsup:
