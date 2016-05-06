var Hamming = function() {};

Hamming.prototype.compute = function(firstStrand, secondStrand) {
  var distance = 0;

  if (firstStrand.length !== secondStrand.length) {
    throw('DNA strands must be of equal length.');
  }

  for (var i = 0; i <= firstStrand.length; i++) {
    if (firstStrand.charAt(i) !== secondStrand.charAt(i)) {
      distance++;
    }
  }

  return distance;
}

module.exports = Hamming;
