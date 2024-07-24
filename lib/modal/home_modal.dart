

class GeetaModal
{
    late GeetaNumber geetaNumber1,geetaNumber2,geetaNumber3,geetaNumber4,geetaNumber5,geetaNumber6,geetaNumber7,geetaNumber8,geetaNumber9,geetaNumber10,geetaNumber11,geetaNumber12,geetaNumber13,geetaNumber14,geetaNumber15,geetaNumber16,geetaNumber17,geetaNumber18;

    GeetaModal(
      {required this.geetaNumber1,
      required this.geetaNumber2,
      required this.geetaNumber3,
      required this.geetaNumber4,
      required this.geetaNumber5,
      required this.geetaNumber6,
      required this.geetaNumber7,
      required this.geetaNumber8,
      required this.geetaNumber9,
      required this.geetaNumber10,
      required this.geetaNumber11,
      required this.geetaNumber12,
      required this.geetaNumber13,
      required this.geetaNumber14,
      required this.geetaNumber15,
      required this.geetaNumber16,
      required this.geetaNumber17,
      required this.geetaNumber18});
    factory GeetaModal.fromGeetaModal(Map m1)
    {
        return GeetaModal(geetaNumber1: m1['1'], geetaNumber2: m1['2'], geetaNumber3: m1['3'], geetaNumber4: m1['4'], geetaNumber5: m1['5'], geetaNumber6: m1['6'], geetaNumber7: m1['7'], geetaNumber8: m1['8'], geetaNumber9: m1['9'], geetaNumber10: m1['10'], geetaNumber11: m1['11'], geetaNumber12: m1['12'], geetaNumber13: m1['13'], geetaNumber14: m1['14'], geetaNumber15: m1['15'], geetaNumber16: m1['16'], geetaNumber17: m1['17'], geetaNumber18: m1['18']);
    }
}

class GeetaNumber
{
    late List english;
    late List hindi;
    late List gujarati;
    late List sanskrit;

    GeetaNumber({required this.english,required  this.hindi,required  this.gujarati,required this.sanskrit});
    factory GeetaNumber.fromGeeta(Map m1)
    {
        return GeetaNumber(english: m1['english'], hindi: m1['hindi'], gujarati: m1['gujarati'], sanskrit: m1['sanskrit']);
    }
}