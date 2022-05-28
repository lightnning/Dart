main() {
  List fruits1 = ['apple', 'pears', 'bananas'];
  Set fruits2 = new Set();
  fruits2.add('grapes');
  fruits2.add('apple');
  fruits2.add('pine');

  Iterator iterator1 = fruits1.iterator;
  Iterator iterator2 = fruits2.iterator;
  while (iterator1.moveNext()) {
    var fruit = iterator1.current;
    print('${fruit} is tasty');
  }

  while (iterator2.moveNext()) {
    var fruit = iterator2.current;
    print('${fruit} is tasty');
  }
}