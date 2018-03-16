# git-create

Create repository on GitHub via CLI and clone repository using `ghq`.

Create new repository on `${GITHUB_HOST}/${GITHUB_USER}/foo`.

```sh
git create foo
```

If you want to specify owner or organization, in which case type below.

```sh
git create ringohub/foo
```

## Install

```bash
brew tap ringohub/git-create
brew update && brew doctor
brew install git-create
```

## Environment Variables

| Name             | Require | Example                | Note                                                                                   |
| ---------------- | ------- | ---------------------- | -------------------------------------------------------------------------------------- |
| `GITHUB_HOST`    | yes     | github.com             | If your using GitHub Enterprise then API URL is like a `your.ghe.domein`               |
| `GITHUB_USER`    | yes     | ringohub               |                                                                                        |
| `GITHUB_TOKEN`   | yes     | xxxxxxxxxx             | [Generate Here](https://github.com/settings/tokens)                                    |
| `GITHUB_API_URL` | yes     | https://api.github.com | If your using GitHub Enterprise then API URL is like a `http://your.ghe.domein/api/v3` |

## For Development

1. Bump up to next version in `Makefile`.
2. Update CHANGELOG.
3. Generate homebrew formula via `make formula`.
4. Release binary to GitHub via `make release`.
