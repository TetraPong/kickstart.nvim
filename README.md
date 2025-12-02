# Neovim Config Cheatsheet

**Leader key:** `<Space>`

---

## General

| Key | Action |
|-----|--------|
| `<Space>w` | Save file |
| `<Space>q` | Quit |
| `<Esc>` | Clear search highlight |
| `u` | Undo |
| `Ctrl+r` | Redo |

---

## Windows & Navigation

| Key | Action |
|-----|--------|
| `Ctrl+h` | Go to left window |
| `Ctrl+j` | Go to lower window |
| `Ctrl+k` | Go to upper window |
| `Ctrl+l` | Go to right window |
| `Ctrl+Up/Down` | Resize height |
| `Ctrl+Left/Right` | Resize width |

---

## Buffers

| Key | Action |
|-----|--------|
| `Shift+l` | Next buffer |
| `Shift+h` | Previous buffer |
| `<Space>bd` | Delete buffer |

---

## Neo-tree (File Explorer)

| Key | Action |
|-----|--------|
| `<Space>e` | Toggle explorer |
| `<Space>o` | Focus explorer |
| `l` / `Enter` | Open file/expand folder |
| `h` | Collapse folder |
| `a` | Add file (end with `/` for folder) |
| `d` | Delete |
| `r` | Rename |
| `c` | Copy |
| `x` | Cut |
| `p` | Paste |
| `y` | Copy path |
| `R` | Refresh |
| `?` | Show help |

---

## Telescope (Fuzzy Finder)

| Key | Action |
|-----|--------|
| `<Space>ff` | Find files |
| `<Space>fg` | Live grep (search in files) |
| `<Space>fb` | Buffers |
| `<Space>fh` | Help tags |
| `<Space>fr` | Recent files |
| `<Space>fs` | Document symbols |
| `<Space>fd` | Diagnostics |

**Inside Telescope:**

| Key | Action |
|-----|--------|
| `Ctrl+j` | Next result |
| `Ctrl+k` | Previous result |
| `Enter` | Open |
| `Esc` | Close |

---

## LSP (Code Intelligence)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find references |
| `gi` | Go to implementation |
| `K` | Hover docs |
| `<Space>rn` | Rename symbol |
| `<Space>ca` | Code action |
| `<Space>f` | Format file |
| `<Space>e` | Show diagnostic |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

---

## Autocomplete (blink.cmp)

| Key | Action |
|-----|--------|
| `Ctrl+Space` | Trigger completion |
| `Ctrl+y` | Accept suggestion |
| `Ctrl+n` | Next item |
| `Ctrl+p` | Previous item |
| `Ctrl+e` | Close menu |
| `Ctrl+b` | Scroll docs up |
| `Ctrl+f` | Scroll docs down |

---

## Comments (Comment.nvim)

| Key | Action |
|-----|--------|
| `gcc` | Toggle comment (line) |
| `gc` | Toggle comment (visual selection) |
| `gcap` | Comment paragraph |

---

## Surround (nvim-surround)

| Key | Action |
|-----|--------|
| `ys{motion}{char}` | Add surround |
| `ds{char}` | Delete surround |
| `cs{old}{new}` | Change surround |

**Examples:**
- `ysiw"` — surround word with `"`
- `ds"` — delete surrounding `"`
- `cs'"` — change `'` to `"`
- `yss)` — surround line with `()`

---

## Git Signs

| Key | Action |
|-----|--------|
| `]c` | Next hunk |
| `[c` | Previous hunk |

---

## Treesitter (Selection)

| Key | Action |
|-----|--------|
| `Ctrl+Space` | Start/expand selection |
| `Backspace` | Shrink selection |

---

## Which-key

Press `<Space>` and wait — shows available keybindings.

---

## Commands

| Command | Action |
|---------|--------|
| `:Mason` | Open Mason (LSP installer) |
| `:LspInfo` | Show LSP status |
| `:Lazy` | Plugin manager |
| `:Neotree toggle` | Toggle file explorer |
| `:checkhealth` | Check nvim health |

---

## Go Specific

- **Auto format on save** — enabled
- **Auto organize imports** — enabled

---

## WezTerm (Terminal)

| Key | Action |
|-----|--------|
| `Cmd+Shift+D` | Split horizontal (pane below) |
| `Cmd+D` | Split vertical (pane right) |
| `Cmd+[` / `Cmd+]` | Navigate panes |
| `Cmd+Z` | Toggle pane zoom |
| `Cmd+W` | Close pane |
