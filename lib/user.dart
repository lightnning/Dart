class User {
  final String name;
  final int bitrth_year;
  final bool sex;

  User(this.name, this.bitrth_year, this.sex);
  // User(this.name){} <--- こう書いてもOK

  void printData() {
    print('名前は、${this.name} です');
    print('誕生年は、${this.bitrth_year} です');
    if (this.sex == true) {
      print('性別は、男です');
    } else {
      print('性別は、女です');
    }
  }
}

main() {
  User tomoya = User("tomoya", 1967, true);
  User hanako = User("hanako", 1945, false);
  tomoya.printData();
  hanako.printData();
}
