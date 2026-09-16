# mshll/homebrew-tap

Homebrew cask for [Umber](https://umber.mshl.me), floating markdown notes for macOS.

```sh
brew install --cask mshll/tap/umber
```

Installing this way skips the quarantine step a direct download needs, because Homebrew does not
attach the quarantine flag to what it installs. Umber is beta and signed ad-hoc rather than
notarised, so a DMG downloaded from the site does need that step.

Umber updates itself through Sparkle, which is why the cask is marked `auto_updates`: `brew
upgrade` leaves it alone rather than fighting the in-app updater.

This tap holds the cask only. Umber's source is not public.
