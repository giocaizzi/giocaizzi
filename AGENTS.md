# giocaizzi

GitHub profile README. `README.md` renders on github.com/giocaizzi; `profile/*.svg` stats cards are regenerated daily by `.github/workflows/redme-stats.yml`, which opens an auto-merging PR from `bot/readme-cards` (`chore(readme): update stats cards`), authenticated with the release-please GitHub App (secrets `RP_APP_ID`, `RP_APP_KEY`) so CI runs on it. Do not edit those SVGs by hand.

## Make targets

- `make help`: list targets
- `make lint`: README exists and is non-empty
- `make test`: every local file referenced by README exists
- `make check`: lint + test (the required CI check)

## Standard

This repo follows the [GitHub standard](https://github.com/giocaizzi/.github/blob/main/docs/standard.md).
