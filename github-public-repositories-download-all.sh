#!/bin/bash
#
gh auth login;
gh repo list rodneyazev --limit 4000 | while read -r repo _; do
  gh repo clone "$repo" "$repo"
done
