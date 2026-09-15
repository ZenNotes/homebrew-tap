# ZenNotes Homebrew tap

## Desktop app

Install the [ZenNotes](https://github.com/ZenNotes/zennotes) desktop app on macOS:

```sh
brew install --cask zennotes/tap/zennotes
```

(or `brew tap zennotes/tap && brew install --cask zennotes`)

The cask downloads the official, signed + notarized `.dmg` from ZenNotes'
GitHub releases. The app updates itself, so Homebrew won't fight its updater.

## Terminal app and CLI

Install the [ZenNotes TUI](https://github.com/ZenNotes/tui) on macOS or Linux:

```sh
brew install zennotes/tap/zn
zn tui
```

The formula downloads the official release archive for your OS and architecture.
Update with `brew update && brew upgrade zn`.

## Package sources

- Desktop cask: `packaging/homebrew/` in
  [ZenNotes/zennotes](https://github.com/ZenNotes/zennotes/tree/main/packaging/homebrew).
- TUI formula: `packaging/homebrew/` in
  [ZenNotes/tui](https://github.com/ZenNotes/tui/tree/main/packaging/homebrew).

Edit the package definitions in their source repositories, then mirror them here.
