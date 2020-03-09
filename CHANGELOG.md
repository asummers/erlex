# Changelog
All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## 0.2.6 - 2020-03-09
### Added
- Replace << parsing to fix nexted pattern matching binary bugs discovered from Phoenix 1.4.15.

## 0.2.5 - 2019-09-19
### Added
- Handle Erlang variables better with casing in guards.

## 0.2.4 - 2019-07-18
### Added
- Handle names in whens more properly.

## 0.2.3 - 2019-07-16
### Added
- Handle single letter atoms in constracts.

## 0.2.2 - 2019-06-07
### Added
- Handle pretty printing binary strings better.

## 0.2.1 - 2019-02-11
### Added
- Handle another struct pretty print.

## 0.2.0 - 2019-02-01
### Added
- Handle scientific notation.
- Handle numbered differently, fixes bug.
- Handle ... contracts.
- Add another struct pretty print layer.

## 0.1.6 - 2018-11-06
### Added
- Add ability to pretty print exception struct as Exception.t().

## 0.1.5 - 2018-09-17
### Added
- Add ability to pretty print numbered named types

## 0.1.4 - 2018-09-17
### Added
- Add ability to parse whens in specs.

## 0.1.3 - 2018-09-10
### Added
- Add ability to parse empty tuples
- Bump ex_doc

## 0.1.2 - 2018-08-26
### Added
- Add ability to deal with when clauses in contracts

## 0.1.1 - 2018-08-21
### Added
- Add newline characters in multihead contracts

## 0.1.0 - 2018-07-22
### Added
- Changelog, CI, docs
- Initial functionality and tests

[Unreleased]: https://github.com/asummers/erlex/compare/v0.2.1...HEAD
[0.2.0...0.2.1]: https://github.com/asummers/erlex/compare/v0.2.0...v0.2.1
[0.1.6...0.2.0]: https://github.com/asummers/erlex/compare/v0.1.6...v0.2.0
[0.1.5...0.1.6]: https://github.com/asummers/erlex/compare/v0.1.5...v0.1.6
[0.1.4...0.1.5]: https://github.com/asummers/erlex/compare/v0.1.4...v0.1.5
[0.1.3...0.1.4]: https://github.com/asummers/erlex/compare/v0.1.3...v0.1.4
[0.1.2...0.1.3]: https://github.com/asummers/erlex/compare/v0.1.2...v0.1.3
[0.1.1...0.1.2]: https://github.com/asummers/erlex/compare/v0.1.1...v0.1.2
[0.1.0...0.1.1]: https://github.com/asummers/erlex/compare/v0.1.0...v0.1.1
