void main (){
  
  List<String> fruits = ['banana', 'pineapple', 'watermelon'];
  List<int> numbers = [1, 3, 2, 5, 4];

  // リスト内の各要素に対して関数を実行する。
  fruits.forEach((i) => print(i)); // => banana pineapple watermelon
  
  // 与えられた各要素に処理を掛けた後に、その要素群に対する新しいリストを作成する。
  var mappedFruits = fruits.map((fruit) => '私は $fruit が好きです').toList();
  print(mappedFruits); // => ['I love banana', 'I love pineapple', 'I love watermelon']

  // 与えられた要素がリストにあるか確認する。
  print(numbers.contains(6)); // => false
  print(fruits.contains('pineapple')); // => true

  // リスト内の要素を順序付けする。
  numbers.sort();
  print(numbers); // => [1, 2, 3, 4, 5]

  //すべての要素がテストを満たすことを確認する。
   List<Map<String, dynamic>> users = [
   { "name": 'John', "age": 18 },
   { "name": 'Jane', "age": 21 },
   { "name": 'Mary', "age": 23 },
  ];
  var is18AndOver = users.every((i) => i["age"] >= 18);
  print(is18AndOver); // => true

  var hasNamesWithJ = users.every((i) => i["name"].startsWith('J'));
  print(hasNamesWithJ); // => false
 
  // テストを満たす要素のコレクションを返す。
   // See #6 for users list
  var over21s = users.where((i) => i["age"] > 21);
  print(over21s); // => ({name: Mary, age: 23})

  var nameJ = users.firstWhere((i) => i["name"].startsWith("J"), orElse: () => null);
  print(nameJ); // => {name: John, age: 18}

  var under18s = users.singleWhere((user) => user["age"] < 18, orElse: () => null);
  print(under18s); // => null

  // https://qiita.com/dennougorilla/items/170deacf178891ced41e
  // あなたが知っておくべき10の配列メソッド(Dart)
  
}

