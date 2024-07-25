

class GeetaModal
{
  late String number,title,image;
  late O1 o1;

  GeetaModal({required this.number,required this.title,required this.image,required this.o1});

  factory GeetaModal.fromJson(Map m1)
    {
      return GeetaModal(o1: O1.fromOne(m1['o1']), number: m1['number'],image: m1['image'],title: m1['title']);
    }
}

class O1
{
    late List english;
    late List hindi;
    late List gujarati;
    late List sanskrit;

    O1({required this.english,required this.hindi,required this.gujarati,required this.sanskrit});
    factory O1.fromOne(Map m1)
    {
        return O1(english: m1['english'], hindi: m1['hindi'], gujarati: m1['gujarati'], sanskrit: m1['sanskrit']);
    }
}