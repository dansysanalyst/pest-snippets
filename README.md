# Pest Snippets

**Ready for Pest v2**

Pest Snippets is a compilation of code snippets for writing tests with [Pest PHP](https://pestphp.com/).

Code snippets are templates for the codes you use most often.

Using snippets allows you to write code faster, boosting your productivity, and preventing mistakes.

⭐ Please consider starring the [GitHub repository](https://github.com/dansysanalyst/pest-snippets) if you find this extension useful.

## 🚀 Quick start

Just type `:p` to get a list of all code snippets.

Additionally, you can type:

- `:pte` to access all `test()` snippets.

- `:pti` to access all `it()` snippets.

- `:pex` to access the available `expect()` methods.

![Screenshot](https://github.com/dansysanalyst/pest-snippets/raw/main/images/screenshot.gif)

## 🗒️ Code Snippet List

### Test templates

Pest provides two functions for writing tests: `test()` and `it()`.

Type `:pte` + [TAB] to use the `test()` function:

```php
test('', function () {
  //expect()->
});
```

Type `:pit` + [TAB] to the `ìt()` function:

```php
it('', function () {
  //expect()->
});
```

#### Skipping tests

Type `:ptes` / `:pits` to create a test with `skip()`:

```php
test('', function () {
  //...
})->skip();
```

Type `:petodo` / `:pitodo` + [TAB] to create a test with `todo()`:

```php
test('', function () {
  //...
})->todo();
```

#### Skipping tests (WIP)

WIP stands for "Work In Progress".

Type `:ptewip` / `:pitwip` to create a test with `skip('wip')`:

```php
test('', function () {
  //...
})->skip('wip');
```

#### Groups of tests

Type `:pteg` / `:pitg` + [TAB] to create a test with `group()`:

```php
test('', function () {
  //...
})->group();
```

#### Datasets

Type `:pted` / `:pitd` + [TAB] to create a test with `with()`:

```php
test('', function () {
  //...
})->with();
```

Type `:pteld` / `:pitld` + [TAB] to create a test with `with()` using Lazy datasets:

```php
test('', function () {
  //...
})-> with(function () {
  yield '';
});
```

### Exceptions & Errors

Type `:ptet` / `:pitt` + [TAB] to create a test with `throws()`:

```php
test('throws exception', function () {
    //...
})->throws();
```

Type `:ptetif` / `:pittif` + [TAB] to create a test with `throwsIf()`:

```php
test('throws exception if...', function () {
    //...
})->throwsIf();
```

Type `:penoex` / `:pitnoex` + [TAB] to create a test with `throwsNoExceptions()`:

```php
test('throws no exceptions', function () {
    //...
})->throwsNoExceptions();
```

### Setup and teardown

Type `:pbe` + [TAB] to create a `beforeEach()` function:

```php
beforeEach(function () {
  //...
});
```

Type `:pae` + [TAB] to create a `afterEach()` function:

```php
afterEach(function () {
  //...
});
```

Type `:pba` + [TAB] to create a `beforeAll()` function:

```php
beforeAll(function () {
  //...
});
```

Type `:paa` + [TAB] to create a `afterAll()` function:

```php
afterAll(function () {
  //...
});
```

### Expectation API

Type `:pex` + [TAB] to create a `expect()` function:

```php
  expect()
```

Then, type `:pex` and use your keyboard to move through all the different `expectation` methods.

For example, type: `pex` + [TAB]  and then `:pextobe` + [TAB] results in:

```php
  expect()->toBe()
```

Available `expect()` methods:
| Trigger                       | Snippet                      |
| ----------------------------- | ---------------------------- |
| : `pex`                       | expect()->                   |
| : `pextobe`                   | ->toBe()                     |
| : `pextobearray`              | ->toBeArray()                |
| : `pextobeempty`              | ->toBeEmpty()                |
| : `pextobetrue`               | ->toBeTrue()                 |
| : `pextobetruthy`             | ->toBeTruthy()               |
| : `pextobefalse`              | ->toBeFalse()                |
| : `pextobefalsy`              | ->toBeFalsy()                |
| : `pextobegreaterthan`        | ->toBeGreaterThan()          |
| : `pextobegreaterthanorequal` | ->toBeGreaterThanOrEqual()   |
| : `pextobelessthan`           | ->toBeLessThan()             |
| : `pextobelessthanorequal`    | ->toBeLessThanOrEqual()      |
| : `pextocontain`              | ->toContain()                |
| : `pextocontainonlyins`       | ->toContainOnlyInstancesOf() |
| : `pextohavecount`            | ->toHaveCount()              |
| : `pextohavemethod`           | ->toHaveMethod()             |
| : `pextohavemethods`          | ->toHaveMethods()            |
| : `pextohaveproperty`         | ->toHaveProperty()           |
| : `pextohaveproperties`       | ->toHaveProperties()         |
| : `pextomatcharray`           | ->toMatchArray()             |
| : `pextomatchobject`          | ->toMatchObject()            |
| : `pextoequal`                | ->toEqual()                  |
| : `pextoequalcanonicalizing`  | ->toEqualCanonicalizing()    |
| : `pextoequalwithdelta`       | ->toEqualWithDelta()         |
| : `pextobein`                 | ->toBeIn()                   |
| : `pextobeinfinite`           | ->toBeInfinite()             |
| : `pextobeinstanceof`         | ->toBeInstanceOf()           |
| : `pextobebool`               | ->toBeBool()                 |
| : `pextobecallable`           | ->toBeCallable()             |
| : `pextobefloat`              | ->toBeFloat()                |
| : `pextobeint`                | ->toBeInt()                  |
| : `pextobeiterable`           | ->toBeIterable()             |
| : `pextobenumeric`            | ->toBeNumeric()              |
| : `pextobeobject`             | ->toBeObject()               |
| : `pextoberesource`           | ->toBeResource()             |
| : `pextobescalar`             | ->toBeScalar()               |
| : `pextobestring`             | ->toBeString()               |
| : `pextobejson`               | ->toBeJson()                 |
| : `pextobenan`                | ->toBeNan()                  |
| : `pextobenull`               | ->toBeNull()                 |
| : `pextohavekey`              | ->toHaveKey()                |
| : `pextohavekeys`             | ->toHaveKeys()               |
| : `pextohavelength`           | ->toHaveLength()             |
| : `pextobefile`               | ->toBeFile()                 |
| : `pextobedirectory`          | ->toBeDirectory()            |
| : `pextobereadabledirectory`  | ->toBeReadableDirectory()    |
| : `pextobereadablefile`       | ->toBeReadableFile()         |
| : `pextobewritabledirectory`  | ->toBeWritableDirectory()    |
| : `pextobewritablefile`       | ->toBeWritableFile()         |
| : `pextostartwith`            | ->toStartWith()              |
| : `pextothrow`                | ->toThrow()                  |
| : `pextoendwith`              | ->toEndWith()                |
| : `pextomatch`                | ->toMatch()                  |
| : `pextomatchconstraint`      | ->toMatchConstraint()        |
| : `pexdd`                     | ->dd()                       |
| : `pexray`                    | ->ray()                      |
| : `pexjson`                   | ->json()->                   |
| : `pexand`                    | ->and()->                    |
| : `pexnot`                    | ->not()->                    |
| : `pexdef`                    | ->defer()->                  |
| : `pexeach`                   | ->each()->                   |
| : `pexsequence`               | ->sequence()                 |
| : `pexwhen`                   | ->when()                     |
| : `pexunless`                 | ->unless()                   |
| : `pexunless`                 | ->unless()                   |
