abstract class Iterable {
  String iteratorString;
  void setItr(setIterator);

  String get iterator;
  void set iterator(String a);
}

class List extends Iterable {
  setItr(setIterator) {
    iteratorString = setIterator;
  }

  String get iterator => iteratorString;
  void set iterator(String setIterator) {
    setItr(setIterator);
  }
}

main() {
  var newList = new List();
  newList.iterator = 'setting iteratorString';
  print(newList.iterator);
}