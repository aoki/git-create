# git-create

Create repository on GitHub via CLI and clone repository using `ghq`.

```sh
git create foo
```

## Install

```bash
brew tap ringohub/git-create
brew update && brew doctor
brew install git-create
```

## Environment Variables

| Name             | Require | Example                | Note                                                |
| ---------------- | ------- | ---------------------- | --------------------------------------------------- |
| `GITHUB_HOST`    | yes     | github.com             |                                                     |
| `GITHUB_USER`    | yes     | ringohub               |                                                     |
| `GITHUB_TOKEN`   | yes     | xxxxxxxxxx             | [Generate Here](https://github.com/settings/tokens) |
| `GITHUB_API_URL` | yes     | https://api.github.com |                                                     |
