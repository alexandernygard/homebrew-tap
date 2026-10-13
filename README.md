# alexandernygard/tap

Homebrew casks and formulae for my apps.

Install an app by its full name, which also tells Homebrew to trust it:

```sh
brew install --cask alexandernygard/tap/ur
```

If you `brew tap alexandernygard/tap` first and use short names, run `brew trust alexandernygard/tap` once, since Homebrew ignores casks from taps it doesn't trust.

| Name | What it is | Install |
|---|---|---|
| [Ur](https://github.com/alexandernygard/ur) | Keyboard-first time tracker for the work day (macOS 14+) | `brew install --cask alexandernygard/tap/ur` |

Update everything with `brew upgrade`.

## Opening an app the first time

These apps aren't signed with a paid Apple developer account, so macOS stops the first launch with a message that it can't verify the developer. Click **Done**, open **System Settings → Privacy & Security**, scroll down to the message about the app and click **Open Anyway**. You only need to do this once per app.

## Adding a project

Mac apps go in `Casks/`, command-line tools in `Formula/`. Each project publishes its own GitHub releases; the file here only points at the latest one. A project's release workflow updates its file using a `HOMEBREW_TAP_TOKEN` secret, a fine-grained token with *Contents: read and write* on this repo only. See [ur's workflow](https://github.com/alexandernygard/ur/blob/main/.github/workflows/release.yml) for an example.

The Check workflow runs `brew style` and `brew audit` and installs every cask on each push.
