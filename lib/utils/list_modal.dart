

class ListModal
{
  int? index1,index2;

  ListModal({required this.index1,required this.index2});
  factory ListModal.fromList(Map m1)
  {
    return ListModal(index1: m1['index1'], index2: m1['index2']);
  }
}