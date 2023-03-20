# Change Log

All notable changes to the "pest-snippets" extension will be documented in this file.

## [2.0.0]

- Ready for Pest V2
- Added `:petodo` and `:pitodo` to generate a test with `->todo()`
- Added `:penoex` and `:pitnoex` to generate a test with `->throwsNoExceptions()`
- Added `:pextobearray` for `->toBeArray()`
- Added `:pextocontainonlyins` for `->toContainOnlyInstancesOf()`
- Added `:pextohavemethod` for `->toHaveMethod()`
- Added `:pextohavemethods` for `->toHaveMethods()`
- Added `:pextobefile` for `->toBeFile()`
- Added `:pextobereadablefile` for `->toBeReadableFile()`
- Added `:pextobewritablefile` for `->toBeWritableFile()`
- Added `:pexdef` for `->defer()->`
- Improved `throwsIf` snippet
- Removed `:pextap` due to deprecation of  `->tap()`
- Removed `:pteo` and `:pito` due to deprecation of  `->only()`

```php
test('throws no exceptions', function () {
    //...
})->throwsNoExceptions();
```

## [1.0.7]

- DOC: README improvements
- Modified logo
- Updated screenshot
- Added LICENSE
- Added `:pextothrow` for `->toThrow()`
- Added compile.sh script

## [1.0.6]

- Fixed and update README.md
- Changed `:ptet` into `->test()->throws()`
- Changed `:pitt` into `->it()->throws()`
- Added `:ptetif` for `->test()->throwsIf()`
- Added `:pittif` for `->it()->throwsIf()`

## [1.0.5]

- Added `:pextohaveproperties` for `->toHaveProperties()`
- Added `:pexwhen` for `->when()`
- Added `:pexunless` for `->unless()`
- Added `:pexmatch` for `->match()`
- Added `:ptet` for `test()->throwsIf()`
- Added `:pitt` for `it()->throwsIf()`

## [1.0.4]

- Added `:pextohavelength` for `->toHaveLength()`

## [1.0.3]

- Added `:pextothrow` for `->toThrow()`

## [1.0.2]

- Added `:pextobetruthy` for `->toBeTruthy()`
- Added `:pextobefalsy` for `->toBeFalsy()` method

## [1.0.1]

- Added `:pextobein` for `->toBeIn()`
- Added `:pextap` for `->tap()` method

## [1.0.0]

- Removed `->` from `pex:`
- Removed indentation from every `pex:...`
- Removed expect() from every `pex:...`
- Removed uncessary key focousing from `pex:...` which do not accept arguments
- Added `:pexjson` for `json()` method from Pest 1.6.0
- Added `:pextobedirectory` for `->toBeDirectory()`
- Added `:ptewip` and `pitwip` for creating test functions with Skip->('wip')

## [0.1.0]

- Initial release of Pest Snippets extension
