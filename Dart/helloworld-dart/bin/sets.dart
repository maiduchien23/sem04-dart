void main()
{
  var elements = {'O', 'K', 'Ni', 'Rb'};

  elements.add('F');
  elements.addAll(['H', 'C']);

  print(elements);
  elements.add('C');
  print(elements);
}