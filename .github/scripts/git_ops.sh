#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"

OLD_CHANGELOG=$(cat CHANGELOG.md)

echo y | mix git_ops.release

git push --follow-tags

VERSION=$(mix run -e "IO.puts(Mix.Project.get().project()[:version]) && System.halt()" --no-start | tail -1)

echo $OLD_CHANGELOG > CHANGELOG.md.old
diff --new-line-format="%L" --old-line-format="" --unchanged-line-format="" CHANGELOG.md.old CHANGELOG.md > release_notes.txt || true
RELEASE_NOTES=$(cat release_notes.txt)

rm release_notes.txt
rm CHANGELOG.md.old

echo "::set-output name=version::$VERSION"
echo "::set-output name=release_notes::$RELEASE_NOTES"
