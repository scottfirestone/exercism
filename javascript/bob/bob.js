"use strict";

var Bob = function() {};

Bob.prototype.hey = function(input) {
  if(yell(input)) {
    return "Whoa, chill out!";
  } else if(question(input)) {
    return "Sure.";
  } else if(silence(input)) {
    return "Fine. Be that way!";
  } else {
    return "Whatever.";
  }
};

function yell(input) {
  return input == input.toUpperCase() && input.match(/[a-z]/i);
}

function question(input) {
  return input.slice(-1) === "?";
}

function silence(input) {
  return input == 0;
}

module.exports = Bob;
