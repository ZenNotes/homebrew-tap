# ZenNotes Homebrew tap

Install the [ZenNotes](https://github.com/ZenNotes/zennotes) desktop app on macOS:

```sh
brew install --cask zennotes/tap/zennotes
```

(or `brew tap zennotes/tap && brew install --cask zennotes`)

The cask downloads the official, signed + notarized `.dmg` from ZenNotes'
GitHub releases. The app updates itself, so Homebrew won't fight its updater.

> This tap is generated from `packaging/homebrew/` in the main
> [ZenNotes/zennotes](https://github.com/ZenNotes/zennotes) repo — edit it there.
