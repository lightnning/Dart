abstract class Describable {
  void describe();
  void describeWithEmphasis() {
    print('========');
    describe();
    print('========');
  }
}

class MyTitle extends Describable {
  @override
  void describe() => {print('mytitle')};
}

class MySubtitle implements Describable {
  @override
  void describe() => print("Development Division");
  void describeWithEmphasis() {
    print('********');
    describe();
    print('********');
  }
}

main() {
  new MyTitle().describeWithEmphasis();
  new MySubtitle().describeWithEmphasis();
}