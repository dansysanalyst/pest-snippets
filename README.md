# Pest PHP Snippets

Code snippets for writing [Pest PHP](https://pestphp.com/) tests in Visual Studio Code.

![Screenshot](https://github.com/dansysanalyst/pest-snippets/raw/main/images/screenshot.gif)

## Usage

### Writing Tests

Pest provides two fuctions for testing `test()` and `it()`.

Type `:pte` + [TAB] for:

```php
test('', function () {
  //expect()->
});
```

Type `:pit` + [TAB] for:

```php
it('', function () {
  //expect()->
});
```

#### Skipping tests

Type `:ptes` / `:pits` for the desired function with `skip()`:

```php
test('', function () {
  //..
})->skip();
```

Type `:pteo` / `:pito` + [TAB] for the desired function with `only()`:

```php
test('', function () {
  //..
})->only();
```

#### Skipping tests (wip)

`wip` stands for "Work In Progress".
 
Type `:ptewip` / `:pitwip` for the desired function with `skip('wip')`:

```php
test('', function () {
  //..
})->skip('wip');
```

Type `:pteo` / `:pito` + [TAB] for the desired function with `only()`:

```php
test('', function () {
  //..
})->only();
```

#### Groups of tests

Type `:pteg` / `:pitg`  + [TAB] for the desired function with `group()`:

```php
test('', function () {
  //..
})->group();
```

#### Datasets

Type `:pted` / `:pitd`  + [TAB] for the desired function with `with()`:

```php
test('', function () {
  //..
})->with();
```

Type `:pteld` / `:pitld` + [TAB] for the desired function with `with()` for Lazy datasets:

```php
test('', function () {
  //..
})-> with(function () {
  yield '';
});
```

### Setup and teardown

Type `:pbe` + [TAB] for:

```php
beforeEach(function () {
  //..
});
```

Type `:pae` + [TAB] for:

```php
afterEach(function () {
  //..
});
```

Type `:pba` + [TAB] for:

```php
beforeAll(function () {
  //..
});
```

Type `:paa` + [TAB] for:

```php
afterAll(function () {
  //..
});
```

### Expectation API

Type `:pex` + [TAB] for:

```php
  expect()
```

Continue typing `:pex` and complete with your desired `expect()` method.

For example, `:pextobe` + [TAB] produces:

```php
->toBe()
```

All together:

```php
  expect()->toBe()
```


Available `expect()` methods:

| Trigger  | Snippet          |
| -------- | ---------------- |
| :pex | expect()-> |
| :pextobe | ->toBe() |
| :pextobeempty | ->toBeEmpty() |
| :pextobetrue | ->toBeTrue() |
| :pextobefalse | ->toBeFalse() |
| :pextobegreaterthan | ->toBeGreaterThan() |
| :pextobegreaterthanorequal | ->toBeGreaterThanOrEqual() |
| :pextobelessthan | ->toBeLessThan() |
| :pextobelessthanorequal | ->toBeLessThanOrEqual() |
| :pextocontain | ->toContain() |
| :pextohavecount | ->toHaveCount() |
| :pextohaveproperty | ->toHaveProperty() |
| :pextomatcharray | ->toMatchArray() |
| :pextomatchobject | ->toMatchObject() |
| :pextoequal | ->toEqual() |
| :pextoequalcanonicalizing | ->toEqualCanonicalizing() |
| :pextoequalwithdelta | ->toEqualWithDelta() |
| :pextobeinfinite | ->toBeInfinite() |
| :pextobeinstanceof | ->toBeInstanceOf() |
| :pextobebool | ->toBeBool() |
| :pextobecallable | ->toBeCallable() |
| :pextobefloat | ->toBeFloat() |
| :pextobeint | ->toBeInt() |
| :pextobeiterable | ->toBeIterable() |
| :pextobenumeric | ->toBeNumeric() |
| :pextobeobject | ->toBeObject() |
| :pextoberesource | ->toBeResource() |
| :pextobescalar | ->toBeScalar() |
| :pextobestring | ->toBeString() |
| :pextobejson | ->toBeJson() |
| :pextobenan | ->toBeNan() |
| :pextobenull | ->toBeNull() |
| :pextohavekey | ->toHaveKey() |
| :pextohavekeys | ->toHaveKeys() |
| :pextobedirectory | ->toBeReadableDirectory() |
| :pextobereadabledirectory | ->toBeReadableDirectory() |
| :pextobewritabledirectory | ->toBeWritableDirectory() |
| :pextostartwith | ->toStartWith() |
| :pextoendwith | ->toEndWith() |
| :pextomatch | ->PestExpectToMatch() |
| :pextomatchconstraint | ->toMatchConstraint() |
| :pexdd | ->dd() |
| :pexray | ->ray()|
| :pexjson | ->json()-> |
| :pexand | ->and()-> |
| :pexnot | ->not()-> |
| :pexeach | ->each()-> |
| :pexsequence | ->sequence() |
