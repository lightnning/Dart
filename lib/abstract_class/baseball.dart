abstract class Baseball {
  String teamName;
  String player;
  
}

class Giants extends Baseball{
  String teamName = '巨人';
  String player;
  Giants({this.player});
  
  
}

class Dragons extends Baseball{
  String teamName = '中日';

}

class Dena extends Baseball{
  String teamName = 'DeNA' ;
}

class Trainer {
  void excute(Baseball baseball){
    print(baseball.teamName);
  }
  void play(Baseball baseball){
    print('${baseball.player}がピッチングをした');
  }
}

main(){
  var giants = Giants();
  var dragons = Dragons();
  var dena = Dena();
  var trainer = Trainer();

  trainer.excute(giants);
  trainer.excute(dragons);
  trainer.excute(dena);
  trainer.play(dragons);
  
  
}