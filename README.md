# ohp1x/presets

Official preset collection for [gop1x](https://github.com/ohp1x/gop1x).

## Usage

Presets are auto-cloned by gop1x to `~/.ohp1x/local/presets/ohp1x/presets/`. No manual setup needed.

```bash
gop1x preset list          # see available presets
gop1x add shell/zsh        # install a preset
gop1x preset info tools/fzf  # show details
```

## Categories

| Category | Description |
|----------|-------------|
| `core/` | Base system, package manager bootstrap |
| `shell/` | Shell setup + config |
| `zsh/` | Zsh-specific plugins and frameworks |
| `tools/` | CLI tools & utilities |
| `editor/` | Editor + config |
| `lang/` | Language toolchains |
| `devops/` | DevOps tools |
| `prompt/` | Shell prompt |
| `git/` | Git configuration |

## Structure

Each preset lives in `<category>/<name>/` with a `preset.yaml` manifest:

```
<category>/<name>/
├── preset.yaml       # manifest (required)
├── *.zsh / *.bash    # shell snippets
├── *.tmpl            # Go templates
├── Brewfile          # optional (macOS)
└── hooks/            # pre/post install/uninstall scripts
```

## Contributing

1. Fork this repo
2. Create branch `feat/preset-<category>-<name>`
3. Add preset following the schema in [DESIGN.md](https://github.com/ohp1x/workspace/blob/main/references/gop1x/DESIGN.md)
4. Test with `gop1x add <category>/<name> --dry-run`
5. PR with squash merge

## License

MIT
