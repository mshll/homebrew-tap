# mshll/homebrew-tap

Homebrew cask for [Cirrus](https://trycirrus.app), notes that float, for macOS.

```sh
brew install --cask mshll/tap/cirrus
```

Cirrus was called Umber until 0.2.1. `cask_renames.json` maps the old `umber` cask to `cirrus`, so
`brew upgrade` moves existing installs over.

Cirrus updates itself through Sparkle, which is why the cask is marked `auto_updates`: `brew
upgrade` leaves it alone rather than fighting the in-app updater.

This tap holds the cask only. Cirrus's source is not public.
