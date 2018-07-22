# Contributing to Erlex

Thank you for considering contributing to Erlex! No matter how big or
small, every contribution helps make this a better project. We
absolutely appreciate any and all help.

## Issues

Please file issues [here](https://github.com/asummers/erlex/issues)

## Documentation

Documentation is the gift that keeps on giving. If you notice
something even as small as a typo or an ambiguous sentence, please
file an issue or submit a pull request!

## Development Contributions

Take a look at the open issues
[here](https://github.com/asummers/erlex/issues) and post that you
plan on working on an issue, so we can discuss approaches and make
sure there isn't duplicated work happening.

Before submitting a pull request, make sure all of the following pass:

```
mix deps.get
mix format --check-formatted
mix compile --force --warnings-as-errors
mix credo list --strict
mix test
```

Steps:
1) Fork it!
2) Create a new branch off of master in your fork and do your work
3) Squash your commits to a single commit. If you don't know how to do
this, that's okay. We will work through it in pull request.
4) Make sure any documentation has been updated and all checks are passing.
5) Submit a pull request. Thank you! :heart:

## Code of Conduct

Be sure to read and follow the [code of conduct](https://github.com/asummers/erlex/blob/master/code-of-conduct.md).
