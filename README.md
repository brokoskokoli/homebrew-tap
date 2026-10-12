# Homebrew tap for Lumaflip

[Lumaflip](https://github.com/brokoskokoli/lumaflip) is a fast, open-source image viewer that
browses the whole folder in Finder order: HEIC, AVIF, JPEG XL, RAW, HDR, culling with XMP ratings.

## Install

```sh
brew install --cask brokoskokoli/tap/lumaflip
```

or

```sh
brew tap brokoskokoli/tap
brew install --cask lumaflip
```

Requirements: macOS 15 Sequoia or later on Apple Silicon. The app is signed with a Developer ID
and notarized by Apple.

## Updates

Lumaflip updates itself (Sparkle), so the cask is marked `auto_updates true` and
`brew upgrade` leaves a running copy alone. To let Homebrew upgrade it anyway:
`brew upgrade --cask --greedy lumaflip`.

## Uninstall

```sh
brew uninstall --cask lumaflip
brew uninstall --cask --zap lumaflip   # also removes settings, caches and saved state
```

## How this tap is maintained

`Casks/lumaflip.rb` is updated automatically by the
[release workflow](https://github.com/brokoskokoli/lumaflip/blob/main/.github/workflows/release.yml)
of Lumaflip whenever a new version is published (version and SHA-256 of the notarized DMG).
Issues with the app itself belong in the
[Lumaflip issue tracker](https://github.com/brokoskokoli/lumaflip/issues).

`brew help`, `man brew` or [Homebrew's documentation](https://docs.brew.sh) explain Homebrew itself.
