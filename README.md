# dotvim

The following (Neo)Vim configuration is to help me work with programming.

The reason for it, is that I work with many of technologies, some even on the same project.

The main technologies that I'm placing emphases on are:

- Ruby
- Go
- HTML
- CSS
- Javascript (React/JSX, Vue, es6, es7, babel)
- Elm
- XML
- Rust
- C
- Python

There is also support for spelling, thesaurus, language server protocol, better
highlighting of actions and a lot more.

## Table Of Content

- [Features](#features)
- [Installation](#installation)
- [Upgrading](#upgrading)
- [Commands](#commands)
  - [General](#generalt)
- [Shortcuts](#shortcuts)
  - [General](#general-1)
  - [Right to Left](#right-to-left)
  - [VCS (General)](#vcs-general)
  - [ALE](#ale)
  - [BufExplorer](#bufexplorer)
  - [CtrlP](#ctrlp)
  - [Fugitive](#fugitive)
  - [GitGutter](#gitgutter)
  - [Emmet](#emmet)
  - [NerdTree](#nerdtree)
  - [Python Mode](#python-mode)
  - [ripgre](#ripgrep)
  - [TagBar](#tagbar)
  - [TComment](#tcomment)
  - [UltraSnippets](#ultrasnippets)
  - [UndoTree](#undotree)
  - [FixMyJS](#fixmyjs)
  - [Go](#go)
  - [Twiggy](#twiggy)
  - [SplitJoin.vim](#splitjoinvim)
  - [Ruby](#ruby)
  - [Far](#far)
  - [TextObj-URI](#TextObj-URI)
- [Plugins](#plugins)

## Features

- `vimrc` handling
- Incremental and smart case search
- Information on trailing whitespace, including cleaning shortcuts
- Logical and Visual layout (for Right-To-Left languages) editing
- Tabs expanded to 2 spaces by default, except for Python
- Keeping the `<Leader>` key as Backslash
- Adding `XX` in edit mode to become alias to the `<ESC>` key
- Highlight current row and color column 80
- Syntax checking
- Snippets
- Completion Quotes, parenthesis pairs, etc
- Extended pair matching with %
- ASCII and table drawing
- Fuzzy file, buffer, MRU, tag, etc finder
- Task list
- VCS support
- Tab Completion
- Commenting
- History management, including persistent undo
- Support documentation for programming languages, based on the original (neo)vim documentation engine
  - In-line documentation
  - Support for external documentation using Zeal
- Reload file when changed from outside
- Working with error window (a.k.a. quickfix and selection list)
- Thesaurus, grammer and dictionary spelling
- Language Server support
- NeoVim Support

## Installation

The following commands will clone the repo, symlink ~/.vimrc and update the bundles:

```
git clone https://github.com/ik5/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install plugins from the command line:

```
vim +PlugUpdate +qa
```

For Neovim, under ~/.config/nvim:

```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install plugins from the command line:

```
nvim +PlugUpdate +qa
```

To add or override settings, place them in `~/.vim/vimrc.local` or `~/.config/nvim/vimrc.local`.

To update submodules in the future, when you have vim running, source vimrc to make sure plugins list are updated (or
restart vim):

```
:PlugUpdate
```

### Upgrading

In case you're updating from previous Vundle based to vim-plug, remove the bundle directory as it's not needed anymore,
get vim-plug and install the plugins:

```
cd ~/.vim
rm -rf bundle
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugUpdate +qa
```

## Commands

### General

| Command           | Description                                            |
| ----------------- | ------------------------------------------------------ |
| `Wr`              | Save current buffer using `sudo`                       |
| `HTem`            | Open Horizontal terminal in NeoVim                     |
| `VTerm`           | Open Vertical terminal in NeoVim                       |
| `FormatJSON`      | Format a given JSON buffer                             |
| `GenerateUUID`    | Generate UUID and insert it to current cursor position |
| `RebaseSquash`    | Perform a `pick` strategy for squash on rebase in GIT  |
| `CloseOthers`     | Close all windows and tabs but the current active one  |
| `FixDoubleQuotes` | Replace unicode double quotes to ascii's version       |
| `ToUnixFF`        | Set current file ending to Unix                        |
| `Base64Encode`    | Encode a (range of) string/bytes to base 64            |
| `Base64Decode`    | Decode a (range of) base64 to string/bytes             |


## Shortcuts

### General

| Key                         | Description                                                                                         |
| --------------------------- | --------------------------------------------------------------------------------------------------- |
| `\\`                        | `<Leader>` (as a default)                                                                           |
| `jj`                        | `<ESC>` on insert mode                                                                              |
| `<leader>+r`                | Load .vimrc                                                                                         |
| `<leader>+R`                | Reload vim                                                                                          |
| `K`                         | Show documentation under the cursor                                                                 |
| `<leader>w`                 | Fast save current file (will not work on a buffer without file name)                                |
| `<c-J>` / `<c-Down>`        | Navigate window / terminal - go down                                                                |
| `<c-K>` / `<c-Up>`          | Navigate window / terminal- go up                                                                   |
| `<c-H>` / `<c-Left>`        | Navigate window / terminal- go left                                                                 |
| `<c-L>` / `<c-Right>`       | Navigate window / terminal- go right                                                                |
| `<c-W>`                     | Window functions on insert mode as well                                                             |
| `-` / `+`                   | Resize horizontal splits                                                                            |
| `<alt-,>` / `<alt-.>`       | Resize vertical splits                                                                              |
| `<F2>`                      | Close (but not delete) current buffer                                                               |
| `<leader>d`                 | Delete current buffer                                                                               |
| `<leader>D`                 | Delete current buffer, but keep the split (switch to prev buffer)                                   |
| `<leader>S`                 | Delete trailing whitespace                                                                          |
| `<F5>`                      | Toggle hlsearch                                                                                     |
| `<leader>srln`              | Clear the search register, so the last search is gone                                               |
| `<c-d>` / `<c-u>`           | Center line when moving up and down half a screen                                                   |
| `<Alt-j>`                   | Move current line down                                                                              |
| `<Alt-k>`                   | Move current line up                                                                                |
| `gc`                        | swap current char with the next char                                                                |
| `gC`                        | swap current char with the prev char                                                                |
| `gl`                        | swap current word with the prev word, stay on the same position                                     |
| `gr`                        | swap current word with the next word, stay on the same position                                     |
| `g{`                        | swap current paragraph with the next                                                                |
| `g}`                        | swap current paragraph with the prev                                                                |
| `SPT`                       | Toggle spelling mode                                                                                |
| `<leader>sn`                | Move to the next misspelled word                                                                    |
| `<leader>sp`                | Move to the previous misspelled word                                                                |
| `<leader>sa`                | Add misspelled word under the cursor                                                                |
| `<leader>s?`                | Open suggestion window                                                                              |
| `<leader>f1` - `<leader>f9` | Set fold level between 1 and 9                                                                      |
| `<leader>m`                 | Remove ^M when encoding is messed up (windows)                                                      |
| `<c-b>b`          | Toggle between last two files                                                                       |
| `<c-b>p` | Previous buffer |
| `<c-b>n` | Next buffer |
| `<leader>y`                 | Copy the current visual selection or current line to `~/tmp/.vbuf` file                             |
| `<leader>p`                 | Paste the content of the buffer to `~/tmp/.vbuf` file                                               |
| `Y`                         | Copy from cursor to the end of the line                                                             |
| `gp`                        | visual reselect of what was yanked                                                                  |
| `<leader>ff`                | Display all keywords under the cursor and prompt to go for one of them                              |
| `<leader>q`                 | Close all windows except active one                                                                 |
| `<c-f>`                     | Print full path                                                                                     |
| `<leader><c-w>`             | Exit diff mode                                                                                      |
| `<leader>hc`                | Toggle view of hidden chars                                                                         |
| `<leader>wrp`               | Toggle wrap mode                                                                                    |
| `<leader>srt`               | Sort numbers in paragraph/selection                                                                 |
| `<c-PageDown>`              | Go to next tab                                                                                      |
| `<c-PageUp>`                | Go to prev tab                                                                                      |
| `<C-O>`                     | Set :tabnew command and wait for a name to be placed                                                |
| `<C-T>`                     | Open new tab                                                                                        |
| `<S-Tab>`                   | Execute :retab to set thw whole buffer at the same whitespace type                                  |
| `<leader>T`                 | Open new terminal in NeoVim                                                                         |
| `<leader>rel`               | Toggle between normal and relative numbers                                                          |
| `<leader>curr`              | Toggle cursor row indicator                                                                         |
| `<leader>curc`              | Toggle cursor column indicator                                                                      |
| `<ALT+d>` / `<leader>bfn`   | Toggle between open buffers goto next buffer                                                        |
| `<ALT+a>` / `<leader>bfp`   | Toggle between open buffers goto prev buffer                                                        |
| `<SPACE>x`                  | Delete next buffer                                                                                  |
| `<leader>sr"`               | Surround a word with "                                                                              |
| `<leader>sr'`               | Surround a word with '                                                                              |
| `` <leader>sr` ``           | Surround a word with \`                                                                             |
| `<leader>sr(`               | Surround a word with (), going to beginning of a word. if already there, going to the previous word |
| `<leader>sr)`               | Surround a word with (), from cursor location to the end of the word                                |
| `<leader>sr[`               | Surround a word with [], going to beginning of a word. if already there, going to the previous word |
| `<leader>sr]`               | Surround a word with [], from cursor location to the end of the word                                |
| `<leader>sr{`               | Surround a word with {}, going to beginning of a word. if already there, going to the previous word |
| `<leader>sr}`               | Surround a word with {}, from cursor location to the end of the word                                |
| `<leader>=`                 | Adjust viewport to the middle                                                                       |
| `,f`                        | Find file and open it for edit                                                                      |
| `,s`                        | Find file and open it for edit in horizontal split                                                  |
| `,v`                        | Find file and open it for edit in vertical split                                                    |
| `,t`                        | Find file and open it for edit in new tab                                                           |
| `<C-x><C-o>`                | Open omnicomplete                                                                                   |

### Right To Left

| Key    | Description                  |
| ------ | ---------------------------- |
| `<F8>` | Toggle visual order editing  |
| `<F9>` | Toggle logical order editing |

### VCS (General)

| Key             | Description                 |
| --------------- | --------------------------- |
| `<leader>vcsfc` | Find merge conflict markers |

### ALE

| Key     | Description                        |
| ------- | ---------------------------------- |
| `<c-j>` | Go to next error reported by `ALE` |
| `<c-k>` | Go to prev error reported by `ALE` |

### BufExplorer

| Key       | Description          |
| --------- | -------------------- |
| `<m-F11>` | Toggle `BufExplorer` |

### Fugitive

| Key              | Description                                              |
| ---------------- | -------------------------------------------------------- |
| `<leader>gitb`   | git blame                                                |
| `<leader>gitc`   | git commit                                               |
| `<leader>gitvd`  | vertical git diff                                        |
| `<leader>git/`   | git grep                                                 |
| `<leader>git?`   | git status                                               |
| `<leader>gitps`  | git push                                                 |
| `<leader>gitpl`  | git pull                                                 |
| `<leader>gitft`  | git fetch                                                |
| `<leader>gitw`   | git add current file                                     |
| `<leader>gitlg`  | git log -L                                               |
| `<leader>gitdel` | git rm                                                   |
| `<leader>gitB`  | open current buffer in remote location using web browser |
| `<leader>gitot`  | Prompts for creating new branch (`checkout -B`)          |

### gitgutter

| Key             | Description                               |
| --------------- | ----------------------------------------- |
| `]h`            | Next gutter change under cursor           |
| `[h`            | Prev gutter change under cursor           |
| `<leader>giths` | Gutter set stage under cursor             |
| `<leader>githu` | Gutter undo non staged lines under cursor |
| `<leader>githv` | Gutter Preview changes under cursor       |

### Emmet

| Key      | Description                                                                                             |
| -------- | ------------------------------------------------------------------------------------------------------- |
| `<c-y>,` | Complete [current tags and snippets](https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL) |

### NerdTree

| Key    | Description     |
| ------ | --------------- |
| `<F3>` | Toggle NerdTree |

### Python mode

| Key                   | Description                                                                                                                                                                                                                                                                                            |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `[[`                  | Jump to previous class or function (normal, visual, operator modes)                                                                                                                                                                                                                                    |
| `]]`                  | Jump to next class or function (normal, visual, operator modes)                                                                                                                                                                                                                                        |
| `[M`                  | Jump to previous class or method (normal, visual, operator modes)                                                                                                                                                                                                                                      |
| `]M`                  | Jump to next class or method (normal, visual, operator modes)                                                                                                                                                                                                                                          |
| `aC`                  | Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)                                                                                                                                                                                                                                        |
| `iC`                  | Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)                                                                                                                                                                                                                                    |
| `aM`                  | Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)                                                                                                                                                                                                                           |
| `iM`                  | Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)                                                                                                                                                                                                                       |
| `<C-C>g`              | Go to object definition                                                                                                                                                                                                                                                                                |
| `<C-c>rr`             | Rename classes, functions, modules, packages, methods, variables and keyword arguments                                                                                                                                                                                                                 |
| `<C-c>r1r`            | Rename current module                                                                                                                                                                                                                                                                                  |
| `<C-c>ro`             | Organize imports sorts imports, too. It does that according to PEP8. Unused imports will be dropped.                                                                                                                                                                                                   |
| `<C-c>ra`             | Insert import for current word under cursor                                                                                                                                                                                                                                                            |
| `<C-c>r1p`            | Convert current module to package                                                                                                                                                                                                                                                                      |
| `<C-c>rm` / `<C-c>rl` | Extract method/variable from selected lines.                                                                                                                                                                                                                                                           |
| `<C-c>ru`             | Try to find the places in which a function can be used and changes the code to call it instead                                                                                                                                                                                                         |
| `<C-c>rv`             | When a refactoring needed for methods of a class. In this refactoring, a method of a class is moved to the class of one of its attributes. The old method will call the new method. If you want to change all of the occurrences of the old method to use the new method you can inline it afterwards. |
| `<C-c>rs`             | Change function signature                                                                                                                                                                                                                                                                              |

### ripgrep

| Key  | Description                                                                                               |
| ---- | --------------------------------------------------------------------------------------------------------- |
| `g/` | Look at all files from current position and sub directories                                               |
| `g*` | Look at all files from current position and sub directories force the print of directories if not printed |
| `ga` | Look at all files from current position and sub directories, append errors                                |
| `gw` | Look at all files from current postion and sub directories for current work under the cursor              |

### Tagbar

| Key    | Description   |
| ------ | ------------- |
| `<F4>` | Toggle Tagbar |

### TComment

| Key               | Description                 |
| ----------------- | --------------------------- |
| `[num]<leader>cc` | Comment out current line(s) |
| `[num]<leader>cu` | Uncomment current line(s)   |

### UltraSnippets

| Key                 | Description            |
| ------------------- | ---------------------- |
| `<c-tab>` / `<c-j>` | List snippets foreword |
| `<s-tab>` / `<c-k>` | List snippets backward |

### UndoTree

| Key            | Description      |
| -------------- | ---------------- |
| `<leader>undo` | Toggle undo tree |

### Fixmyjs

| Key     | Description                      |
| ------- | -------------------------------- |
| `<c-l>` | Auto fix Javascript using eslint |

### Go

| Key               | Description                                                               |
| ----------------- | ------------------------------------------------------------------------- |
| `<leader>godoc`   | Create Godoc comment                                                      |
| `<leader>gos`     | Show a list of interfaces which implemented by the type under your cursor |
| `<leader>goi`     | Show type info for the word under your cursor                             |
| `<leader>goh`     | Open godoc horizontal                                                     |
| `<leader>gov`     | Open godoc vertical                                                       |
| `<leader>gobd`    | Open godoc browser                                                        |
| `<leader>goa`     | Switch between test and source files                                      |
| ``<leader>go` ``     | Add default tags to struct (e.g. JSON)                                    |
| `<leader>goT`     | Opens a command for `GoAddTags` allowing to place the needed tag names    |
| `<leader>gov`     | Goto declaration/definition, in a vertical window                         |
| `<leader>gd`      | Goto declaration/definition, in a horizontal window                       |
| `<leader>gol`     | Go meta linter                                                            |
| `<leader>gob`     | Build go project                                                          |
| `<leader>got`     | Execute Go tests                                                          |
| `<leader>gor`     | Execute Go project                                                        |
| `<leader>goe`     | Execute Go install                                                        |
| `<leader>goc`     | Execute test covers                                                       |
| `<leader>go<c-l>` | Execute all possilbe linters                                              |
| `<leader>gof`     | Fill Struct with empty values                                             |
| `<leader>gofi`    | template for `if err ...`                                                 |

### Twiggy

| Key            | Description   |
| -------------- | ------------- |
| `<leader>gitB` | Toggle twiggy |

### SplitJoin.vim

| Key           | Description |
| ------------- | ----------- |
| `<leader>sjj` | Join lines  |
| `<leader>sjs` | Split lines |

### Ruby

| key           | Description                                            |
| ------------- | ------------------------------------------------------ |
| `<leader>rbt` | Execute current spec file                              |
| `<leader>rbs` | Execute nearest spec file                              |
| `<leader>rbl` | Execute last spec file                                 |
| `<leader>rba` | Execute all spec files                                 |
| `<leader>dbg` | Add `require pry; binding.pry` to the current location |

### Far

| key           | Description      |
| ------------- | ---------------- |
| `<leader>far` | Call Far command |

### vim Conflicted

| Key   | Description                       |
| ----- | --------------------------------- |
| `dgu` | diffget from the upstream version |
| `dgl` | diffget from the local version    |


### Denite

| key | Description |
| --- | ----------- |
| `;` | Browse current open buffers |
| `<leader>;` | Browse list of files in current directory |
| `<leader>gr` | Search current directory for occurences of given term and close window if no results |
| `<leader>Wrd` | Search current directory for occurences of word under cursor |

### vim surround

| Key | Description |
| --- | ----------- |
|     |             |

### targets

| Key | Description |
| --- | ----------- |
|     |             |

### TextObj-URI

| Key           | Description          |
|---------------|----------------------|
| `<action>iu`  | Work on internal URI |
| `<action>au`  | Work on entire URI   |
| `go`          | Open/Run url         |

## Plugins

| Name                                                                     | Description                                                                                                                               |
| ------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |

| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
| [](https://github.com/)                                                  |                                                                                                                                           |
