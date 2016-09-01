let Gigasecond = function(date) {
  this.startingTime = date.getTime();
}

Gigasecond.prototype.date = function() {
  return new Date(this.startingTime + 1000000000000);
}

module.exports = Gigasecond;
