# `audit-log-api-playground`

## Setup

**Install dependencies**

On macOS:

```shell
brew bundle
```

:warning: If this is the first time using `direnv`, be sure to [hook `direnv` into your shell](https://direnv.net/docs/hook.html).

**Setup environment**

Create a `.envrc` file from [the example provided](.envrc.example) and follow [the included directions](.envrc.example) to populate the required environment variables.

```shell
# populate .envrc
cp .envrc.example .envrc
```

**Create an installation token**

```shell
# create an installation token
GH_TOKEN=$( ./installation.sh )
```

## Using the Audit Log REST API

Authenticate your requests to the REST API with your `$GH_TOKEN`, e.g. using `gh`:

```shell
gh api /orgs/$ORG/audit-log
```
