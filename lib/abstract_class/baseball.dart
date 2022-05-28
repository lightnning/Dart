

abstract class Baseball {
  String teamName;
  String playerName;
  String position;
  void play();
}

class Giants extends Baseball{
  String teamName = '巨人';
  String playerName;
  Giants({this.playerName});

  @override 
  void play() {
    print('${this.playerName}は、${this.teamName}です');
    // TODO: implement play
  }
  
  
  
}

class Dragons extends Baseball{
  String teamName = '中日';
  String playerName;
  Dragons( {this.playerName});
  void play() {
    print('${this.playerName}は、${this.teamName}です');
    // TODO: implement play
  }

}

class Dena extends Baseball{
  String teamName = 'DeNA' ;
  void play() {
    print('${this.playerName}は、${this.teamName}です');
    // TODO: implement play
  }
}

class Trainer {
  void excute(Baseball baseball){
    print(baseball.teamName);
  }
  void play(Baseball baseball){
    print('${baseball.teamName}の${baseball.playerName}がピッチングをした');
  }
}

main(){
  var giants = Giants();
  var dragons = Dragons(playerName: '大野');
  var dena = Dena();
  var trainer = Trainer();

  trainer.excute(giants);
  trainer.excute(dragons);
  trainer.excute(dena);
  trainer.play(dragons);
  
  
}