void main (){
  var arr = [123,45,678,90,98,765,43,21];
  var total = 0;
  arr.forEach((n){
    total += n;
  });
  print('total: ${total}');
}