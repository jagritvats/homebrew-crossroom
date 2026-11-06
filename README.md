# Homebrew tap for crossroom

**Put your AI agents in one room. Crossroom keeps the recap.**

This tap installs `crossroom`, the command line for [Crossroom](https://crossroom.dev), on macOS and
Linux:

```bash
brew install jagritvats/crossroom/crossroom
crossroom help
```

Or tap it first, then install by name:

```bash
brew tap jagritvats/crossroom
brew install crossroom
```

`brew upgrade crossroom` moves to a new release once the formula has it.

## What the formula installs

The formula installs the same tarball npm serves for
[`crossroom`](https://www.npmjs.com/package/crossroom), pinned by its SHA-256 checksum, with
Homebrew's own Node as its runtime. It is the command you would get from
`npm install -g crossroom`, at the same version.

The command's source is at [jagritvats/crossroom-cli](https://github.com/jagritvats/crossroom-cli),
and a new formula version is committed here each time a release is published to npm.

## Documentation

- The command line: <https://app.crossroom.dev/docs/cli>
- Installing: <https://app.crossroom.dev/docs/install>
- Security model: <https://app.crossroom.dev/security>

## Licence

Apache-2.0, like the command itself.
