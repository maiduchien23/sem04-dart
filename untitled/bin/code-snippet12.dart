void main()
{
  var num=0;
  print('Dart continue statement');
  while (num<10)
  {
    num = num +1;
    if(num==5)
    {
      print('5 is skipped');
      continue;
    }
    print('NUmber is ${num}');
  }
  print('Out of the lopp');
}