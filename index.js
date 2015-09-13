function flattenArray(ary, levels, removeFalsey) {
  var out = [];

  if (levels == null) { levels = Infinity; }

  for (var i = 0; i < ary.length; i++) {
    if (levels && ary[i] && ary[i].slice) {
      out.push.apply(out, flattenArray(ary[i], levels - 1, removeFalsey));
    } else if (ary[i] || !removeFalsey) {
      out.push(ary[i]);
    }
  }

  return out;
}

flattenArray.compact = function(ary, levels) {
  return flattenArray(ary, levels, true);
};

module.exports = flattenArray;
