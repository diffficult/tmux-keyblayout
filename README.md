# Tmux Keyboard Layout plugin (forked from imomaliev/tmux-keyboard-layout)

Plugin that shows current keyboard layout on Linux or Mac

### Usage

```tmux.conf
set -g status-right '#{keyboard_layout2}'
```

### Installation with Tmux Plugin Manager (recommended)

Add plugin to the list of TPM plugins:

```tmux.conf
set -g @plugin 'diffficult/tmux-keyblayout'
```

Press prefix + I to install it.

### Manual Installation

Clone the repo:

```bash
$ git clone https://github.com/diffficult/tmux-keyblayout.git ~/clone/path
```

Add this line to your .tmux.conf:

```tmux.conf
run-shell ~/clone/path/keyboard-layout.tmux
```

Reload TMUX environment with:

```bash
$ tmux source-file ~/.tmux.conf
```

### Configurations

#### Change option scope (default g - global)

Follows same rules as `set-option`

**Special case**: To set scope to session use `'-'`, because by default session scope used when no param is provided.

```tmux.conf
set -g @keyboard_layout:option_scope '-'
```

#### Change output length (default 16)

Make output length equal to 2

```tmux.conf
set -g @keyboard_layout:length 2
```

### License

[MIT](LICENSE)
