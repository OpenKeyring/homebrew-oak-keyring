# OpenKeyring/oak-keyring Homebrew Tap

This tap contains the formula for installing oak-keyring TUI [ok](https://github.com/OpenKeyring/oak-keyring) — a terminal-first password manager.

## Install

```bash
brew tap openkeyring/oak-keyring
brew trust --formula openkeyring/oak-keyring/ok
brew info ok
brew install ok
```

## Trust (Homebrew 6.0.0+)

Homebrew 6.0.0 and later require non-official taps to be trusted before their
formulae can be loaded. This applies to both macOS and Linux. Without the
`brew trust` step above, install fails with:

```text
Error: Refusing to load formula openkeyring/oak-keyring/ok from untrusted tap openkeyring/oak-keyring.
Run `brew trust --formula openkeyring/oak-keyring/ok` or `brew trust openkeyring/oak-keyring` to trust it.
```

Alternatives:

- One-liner that trusts only `ok` (no separate `brew tap`/`brew trust`):
  `brew install openkeyring/oak-keyring/ok`
- Trust the whole tap instead of a single formula:
  `brew trust openkeyring/oak-keyring`

## Update

```bash
brew upgrade ok
```

## Uninstall

```bash
brew uninstall ok
brew untap openkeyring/oak-keyring
```
