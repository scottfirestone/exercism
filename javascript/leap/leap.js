var Year = function(){};

Year.prototype.year = function(input) {
  'isLeap' : function(){
    if(input % 400 == 0){
      return true
    }
  }
}
module.exports = Year;
