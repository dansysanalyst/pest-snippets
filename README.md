# Pest PHP Snippets

Code snippets for writing [Pest PHP](https://pestphp.com/) tests in Visual Studio Code.

## Usage

### Writing Tests

Pest provides two fuctions for testing `test()` and `it()`.

Type `:pte` + [TAB] for:

```php
test('', function () {
  //..
});
```

Type `:pit` + [TAB] for:

```php
it('', function () {
  //..
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
  expect()->
```

Start typing  `:pex` and complete with your desired `expect()` method.


Example: Type `pex:tobe` + [TAB] produces:

```php
 expect()->toBe()
```

Available `expect()` methods:

| Trigger  | Snippet          |
| -------- | ---------------- |
| :pextobe | expect()->toBe() |
| :pextobeempty | expect()->toBeEmpty() |
| :pextobetrue | expect()->toBeTrue() |
| :pextobefalse | expect()->toBeFalse() |
| :pextobegreaterthan | expect()->toBeGreaterThan() |
| :pextobegreaterthanorequal | expect()->toBeGreaterThanOrEqual() |
| :pextobelessthan | expect()->toBeLessThan() |
| :pextobelessthanorequal | expect()->toBeLessThanOrEqual() |
| :pextocontain | expect()->toContain() |
| :pextohavecount | expect()->toHaveCount() |
| :pextohaveproperty | expect()->toHaveProperty() |
| :pextomatcharray | expect()->toMatchArray() |
| :pextomatchobject | expect()->toMatchObject() |
| :pextoequal | expect()->toEqual() |
| :pextoequalcanonicalizing | expect()->toEqualCanonicalizing() |
| :pextoequalwithdelta | expect()->toEqualWithDelta() |
| :pextobeinfinite | expect()->toBeInfinite() |
| :pextobeinstanceof | expect()->toBeInstanceOf() |
| :pextobebool | expect()->toBeBool() |
| :pextobecallable | expect()->toBeCallable() |
| :pextobefloat | expect()->toBeFloat() |
| :pextobeint | expect()->toBeInt() |
| :pextobeiterable | expect()->toBeIterable() |
| :pextobenumeric | expect()->toBeNumeric() |
| :pextobeobject | expect()->toBeObject() |
| :pextoberesource | expect()->toBeResource() |
| :pextobescalar | expect()->toBeScalar() |
| :pextobestring | expect()->toBeString() |
| :pextobejson | expect()->toBeJson() |
| :pextobenan | expect()->toBeNan() |
| :pextobenull | expect()->toBeNull() |
| :pextohavekey | expect()->toHaveKey() |
| :pextohavekeys | expect()->toHaveKeys() |
| :pextobereadabledirectory | expect()->toBeReadableDirectory() |
| :pextobewritabledirectory | expect()->toBeWritableDirectory() |
| :pextostartwith | expect()->toStartWith() |
| :pextoendwith | expect()->toEndWith() |
| :pextomatch | expect()->PestExpectToMatch() |
| :pextomatchconstraint | expect()->toMatchConstraint() |
| :pexdd | expect()->dd() |
| :pexray | expect()->ray()|
| :pexand | ->and()-> |
| :pexnot | ->not()-> |
| :pexeach | ->each()-> |
| :pexsequence | ->sequence() |