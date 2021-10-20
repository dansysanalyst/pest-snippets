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
  //...
})->skip();
```

Type `:pteo` / `:pito` + [TAB] for the desired function with `only()`:

```php
test('', function () {
  //...
})->only();
```

#### Skipping tests (wip)

`wip` stands for "Work In Progress".
 
Type `:ptewip` / `:pitwip` for the desired function with `skip('wip')`:

```php
test('', function () {
  //...
})->skip('wip');
```

Type `:pteo` / `:pito` + [TAB] for the desired function with `only()`:

```php
test('', function () {
  //...
})->only();
```

#### Groups of tests

Type `:pteg` / `:pitg`  + [TAB] for the desired function with `group()`:

```php
test('', function () {
  //...
})->group();
```

#### Datasets

Type `:pted` / `:pitd`  + [TAB] for the desired function with `with()`:

```php
test('', function () {
  //...
})->with();
```

Type `:pteld` / `:pitld` + [TAB] for the desired function with `with()` for Lazy datasets:

```php
test('', function () {
  //...
})-> with(function () {
  yield '';
});
```

### Exceptions & Errors

Type `:ptet` + [TAB] for:

```php
test('throws exception', function () {
    //...
})->throws();
```

Type `:pitt` + [TAB] for:

```php
it('throws exception', function () {
    //...
})->throws();
```

Type `:ptetif` + [TAB] for:

```php
test('throws exception if...', function () {
    //...
})->throwsIf();
```

Type `:pittif` + [TAB] for:

```php
it('throws exception if...', function () {
    //...
})->throwsIf();
```

### Setup and teardown

Type `:pbe` + [TAB] for:

```php
beforeEach(function () {
  //...
});
```

Type `:pae` + [TAB] for:

```php
afterEach(function () {
  //...
});
```

Type `:pba` + [TAB] for:

```php
beforeAll(function () {
  //...
});
```

Type `:paa` + [TAB] for:

```php
afterAll(function () {
  //...
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
| :pextobetruthy | ->toBeTruthy() |
| :pextobefalse | ->toBeFalse() |
| :pextobefalsy | ->toBeFalsy() |
| :pextobegreaterthan | ->toBeGreaterThan() |
| :pextobegreaterthanorequal | ->toBeGreaterThanOrEqual() |
| :pextobelessthan | ->toBeLessThan() |
| :pextobelessthanorequal | ->toBeLessThanOrEqual() |
| :pextocontain | ->toContain() |
| :pextohavecount | ->toHaveCount() |
| :pextohaveproperty | ->toHaveProperty() |
| :pextohaveproperties | ->toHaveProperties() |
| :pextomatcharray | ->toMatchArray() |
| :pextomatchobject | ->toMatchObject() |
| :pextoequal | ->toEqual() |
| :pextoequalcanonicalizing | ->toEqualCanonicalizing() |
| :pextoequalwithdelta | ->toEqualWithDelta() |
| :pextobein | ->toBeIn() |
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
| :pextohavelength | ->toHaveLength() |
| :pextobedirectory | ->toBeReadableDirectory() |
| :pextobereadabledirectory | ->toBeReadableDirectory() |
| :pextobewritabledirectory | ->toBeWritableDirectory() |
| :pextostartwith | ->toStartWith() |
| :pextoendwith | ->toEndWith() |
| :pextoendwith | ->toEndWith() |
| :pextomatch | ->toMatch() |
| :pextomatchconstraint | ->toMatchConstraint() |
| :pexdd | ->dd() |
| :pexray | ->ray()|
| :pexjson | ->json()-> |
| :pexand | ->and()-> |
| :pexnot | ->not()-> |
| :pextap| ->tap()-> |
| :pexeach | ->each()-> |
| :pexsequence | ->sequence() |
| :pexwhen | ->when() |
| :pexunless | ->unless() |
| :pexunless | ->unless() |
