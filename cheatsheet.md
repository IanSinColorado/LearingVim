# Vim Cheatsheet

## Movement
- hjkl - left, down, up, right
- w - move foreward by full word
- W - move foreward by WORD (ignore special characters)
- e - move foreward until the end of the word
- E - move foreward until end of the full WORD
- b - move backwards to the beginning of the word
- B - move backwards to the beginning of the full word
- { - move back by one paragraph
- } - move foreward by one paragraph

## Change Mode (delete content, then edit it in insert mode) 
- cw - change word
- c3e - change to the end of 3 words
- cb - change from cursor to beginning of word
- c4l - change 4 letters
- cW - change to end of full word (ignore special characters like ())
- cc - clears whole line for editing (preserves current indentation)

## Delete Mode (delete content in normal mode)
- dw - delete word
- d3e - delete to the end of 3 words (special characters count as words)
- db - delete from cursor to beginning of word
- d4l - delete 4 letters
- dW - delete to end of WORD
- dd - Deletes an entire line (and makes it ready to paste with p)

## Undo and Repeat
- u - undo to previous autosave
- ctrl + r - redo previous undo

## Help
- :h \<function>

## Plugins!
- Make/Path to ~/.vim/pack/plugins/start
- clone any plugin into this folder
- clone repo with - `git clone <repo ssh link (end with .git)> ~/.vim/pack/plugins/start/<repo name>`

## Buffers
- :ls - list buffers
- :e <path to file (from current directory)> - open new file
- :b # - switch to buffer #
- :b <partial name (ex: cat for cat.py)> - switch to buffer with full name
- :bn - switch to next buffer in :ls list
- :bd - swtich to previous buffer in :ls list

## Windows
- :split <local path to file> - split window with horizontal line in middle
- :vsplit <local path to file> - split window with vertical line in middle
### Move Windows
- ctrl + w, [hjkl] - vim command to select windows
- ctrl + w, [HJKL] - moves current window the direction selected
- ctrl + w, x - excange the windows of one window and the last window
- ctrl + [hjkl] - custom command in .vimrc; move to selected window using regular vim directions; put in .vimrc below:
    - noremap <c-h> <c-w><c-h>
    - noremap <c-j> <c-w><c-j>
    - noremap <c-k> <c-w><c-k>
    - noremap <c-l> <c-w><c-l>
### Quitting Windows
- :q - close selected window
- :bd - close selected window and delete the buffer
- ctrl + w, o - close all windows except for the current one
- :qa - close all windows and exit vim (no write)
- :wqa - write to all files in open windows and exit vim
### Resizing
- ctrl + w, = - equalize the height and width of all open windows
- ctrl + w, [-+] - adjust the height of the selected window
- ctrl + w, [><] - adjust the width of the selected window

## Tabs
- :tabnew - open a new tab
- gt - move to next tab
- gT - move to previous tab
- :tabclose - close tab (:q if its only one window)
- :e <path to file> - open a file in this new tab

## Folds
- .vimrc change: `set foldmethod=indent`    
- zc - close fold at first indented chunk (for python)
- zR - open all folds in file
- zM - close all folds in file

## Navigating Text
- t<char to search for> - search line for character provided and move cursor before character (T for search backward)
- f<char to find> - search line for provided char and move cursor to character (F to search line backwards)
- [_0] - takes cursor to beginning of line
- $ - takes cursor to end of line
- shift + () - take you to beginning and end of a sentence
- H and L - take you to top and bottom of window respectively
- ctrl + (f and b) - scroll buffer down and up respectively
- /<string> - search foreward for the provided string
- shift + ?, <string> - search backward for the provided string
- gg - takes you to the top of the file
- G - takes you to the bottom of the file

## Insert Mode
- a - insert mode after the cursor
- A - insert mode at the end of the line (same as $a)
- I - insert mode at the beginning of the line, but after indentation (same as _i)
- o - insert mode on new line below cursor
- O - insert mode on new line above cursor
- gi - insert mode where last exited
- C deletes to right of cursor (until the end of the line) before entering insert mode
- cc or S - deletes the cotnents of the line before insert mode
- s - deletes a single character before placing in insert mode
