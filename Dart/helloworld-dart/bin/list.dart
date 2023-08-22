void main() {
  var myList = ['A', 'B', 'C', 'D', 'E'];
  print(myList[0]);
  print(myList.sublist(1,3));
  print(myList.length);
  var  listOne = ['A', 'B'];
  var listTwo = ['A', 'B'];
  print(listOne + listTwo);
  print([0,1,2, ...listTwo]);
  }