void main () {
  var n1 = 10;
  var n2 = 15;
  var n3 = null;
  var result = n1 > n2 ? n1 : n2;
  print(result);
  var result1 = n3 ?? n2;
  print(result1);
}