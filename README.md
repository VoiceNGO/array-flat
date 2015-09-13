# Array-Flat

Simple array flattening library since I couldn't find one on npm that would only
  flatten N levels :/

## Installation

```sh
npm install --save array-flat
```

## Usage

flattens any array or array-like object:

```js
> var flatten = require('array-flat');
> flatten([1, 2, [3, 4, [5, 6, 0, 7]]])
[ 1, 2, 3, 4, 5, 6, 0, 7 ]
```

It takes an optional 2nd param which is the # of levels to flatten

```js
> flatten([1, 2, [3, 4, [5, 6, 0, 7]]])
[ 1, 2, 3, 4, [ 5, 6, 0, 7 ] ]
```

`.compact` (or `flatten(ary, depth, removeFalsey)`) removes all falsey values
  from the array at the same time (up to the level flattened):

```js
> var compact = require('array-flat').compact;
> compact([1,2,[3, 4, [5, 6, 0, 7]]])
[ 1, 2, 3, 4, 5, 6, 7 ]
```
