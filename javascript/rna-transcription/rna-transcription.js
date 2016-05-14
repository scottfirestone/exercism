function DnaTranscriber() {};

DnaTranscriber.prototype.DNA_TO_RNA =
{ G: 'C', C: 'G', T: 'A', A: 'U' };

DnaTranscriber.prototype.toRna = function(strand) {
  var rna_strand = '';
  var strand_length = strand.length;
  for (var i = 0; i < strand_length; i++) {
    rna_strand += this.DNA_TO_RNA[strand.charAt(i)];
  };
  return rna_strand;
};

module.exports = DnaTranscriber;
