void main(){
  var arr = new Set();
  arr.add('hello');
  arr.add('ok');
  arr.add('bye');
  arr.add('hello');
  print(arr);
  for (var i in arr) {
    print(i);
  }

}