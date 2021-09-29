void main(){
  var arr = {'国語':98, '数学':76, '英語':54, '理科':68, '社会':79};
  var total = 0;
  for (var k in arr.keys) {
    print('${k} : ${arr[k]}');
    total += arr[k];
  }
  print('合計：${total}. 平均：${total ~/ arr.length}.');

}