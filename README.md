# mtfuller/homebrew-tap

Homebrew tap for [`tlw`](https://github.com/mtfuller/tiny-llm-workbench) — Tiny LLM Workbench, a
local tool for training, running, and evaluating agents backed by tiny LLMs.

## Install

```bash
brew install mtfuller/tap/tlw
```

Requires **macOS on Apple Silicon**. Training and running models additionally need `mlx-lm`:

```bash
brew install mlx-lm    # or: pip install mlx-lm
```

`tlw serve` runs without mlx-lm; model-backed features fail with a clear error until it's present.

## Upgrade

```bash
brew update && brew upgrade tlw
```

## Uninstall

```bash
brew uninstall tlw
brew untap mtfuller/tap
```

## Maintenance

`Formula/tlw.rb`'s `version` / `url` / `sha256` are updated automatically by the
[`Update Homebrew tap`](https://github.com/mtfuller/tiny-llm-workbench/actions/workflows/homebrew.yml)
workflow in the `tiny-llm-workbench` repo whenever a stable release is published.
