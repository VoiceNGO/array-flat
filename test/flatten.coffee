chai   = require 'chai'
expect = chai.expect

chai.should()


flatten   = require('../')
compact   = flatten.compact
toFlatten = [0, 1, [2, false, [3, [4, null, 5], 6], 7, undefined], [8, 9]]

describe 'flatten', =>
  it 'completely flattens an array', =>
    flatten(toFlatten).should.deep.equal([0, 1, 2, false, 3, 4, null, 5, 6, 7, undefined, 8, 9])

  it 'flattens N levels', =>
    flatten(toFlatten, 1).should.deep.equal([0, 1, 2, false, [3, [4, null, 5], 6], 7, undefined, 8, 9])
    flatten(toFlatten, 2).should.deep.equal([0, 1, 2, false, 3, [4, null, 5], 6, 7, undefined, 8, 9])

describe 'compact', =>
  it 'removes falsey values', =>
    compact(toFlatten).should.deep.equal([1, 2, 3, 4, 5, 6, 7, 8, 9])
