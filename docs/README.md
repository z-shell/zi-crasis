<h1> ZI Crasis </h1>

[![Build Status](https://travis-ci.org/z-shell/zi-crasis.svg?branch=main)](https://travis-ci.org/z-shell/zi-crasis)
[![License (GPL version 3)](https://img.shields.io/badge/license-GNU%20GPL%20version%203-blue.svg?style=flat-square)](./LICENSE)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](./LICENSE)
![ZSH 5.0.0](https://img.shields.io/badge/zsh-v5.0.0-orange.svg?style=flat-square)

- [Introduction](#introduction)
- [Installation & Basic Use](#installation--basic-use)
- [Key Bindings](#key-bindings)
- [Screenshots](#screenshots)
- [Code Documentation](#code-documentation)

# Introduction

**Crasis – semigraphical interface to ZI**

Zsh exposes its parser via `(z)` substitution flag. Parsing `.zshrc` is totally possible.
This way `Crasis` lets you edit your `ZI` commands located in `.zshrc`. All in pure
`Zshell` code.

No more commenting-out a line with a text editor to disable plugin, cluttering `.zshrc`,
now you can just **press a button**.

[![asciicast](https://asciinema.org/a/147225.png)](https://asciinema.org/a/147225)

`Crasis` uses pure-Zshell [ZUI](http://github.com/z-shell/zui/) library to create `ncurses` interface.

# Installation & Basic Use

Install [ZI](https://github.com/z-shell/zi) and add following commands to `.zshrc`:

```SystemVerilog
zi light z-shell/zui
zi light z-shell/zi-crasis
```

To use, invoke `crasis [optional zshrc path]` or press `Ctrl-o-k`. Global variables `CRASIS_THEME`
and `CRASIS_LAYOUT` can be used to override configuration file `crasis.conf` (located in plugin's
tree), i.e.:

```SystemVerilog
CRASIS_THEME="zdharma-256" CRASIS_LAYOUT="contract" crasis
```

`256`-color themes require Zsh `5.3` or later.

# Key Bindings

| Key(s)             | Description                                                      |
| ------------------ | ---------------------------------------------------------------- |
| `<`,`>` or `{`,`}` | Horizontal scroll (i.e. left or right)                           |
| `Ctrl-L`           | Redraw of whole display                                          |
| `Ctrl-U`           | Half page up                                                     |
| `Ctrl-D`           | Half page down                                                   |
| `Ctrl-P`           | Previous line, centered                                          |
| `Ctrl-N`           | Next line, centered                                              |
| `[`, `]`           | Jump to next and previous section (e.g. next plugin or snippet)  |
| `g`, `G`           | Jump to beginning and end of whole interface                     |
| `/`                | Show incremental search                                          |
| `F1`               | Jump to result (in incremental search) and back                  |
| `Esc`              | Exit incremental search, clearing query                          |
| `Ctrl-W`           | Delete whole word (in incremental search)                        |
| `Ctrl-K`           | Delete whole line (in incremental search)                        |
| Up and down        | Resize text field when editing it (e.g. to make the text fit in) |

# Screenshots

![clean-256](https://raw.githubusercontent.com/z-shell/zi-crasis/main/themes/screenshots/clean-256.png)

![zdharma-256](https://raw.githubusercontent.com/z-shell/zi-crasis/main/themes/screenshots/zdharma-256.png)

# Code Documentation

`Crasis` is a [ZUI](http://github.com/z-shell/zui/) application. `ZUI` is a pure-Zshell library
where user generates simple text with hyperlinks, which is then turned into active document with
buttons. Check out `Crasis` code documentation:
[Asciidoc](https://github.com/z-shell/zi-crasis/blob/7ff5b6d0ab290187f0064020372560b1de033fee/zsdoc/crasis.adoc),
[PDF](https://github.com/z-shell/zi-crasis/blob/314cc6f71799a1f3399d9d2963b6e070118a229d/zsdoc/pdf/crasis.pdf).
