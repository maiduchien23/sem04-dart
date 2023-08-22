import 'dart:svg';

void main()
{
  var footballTeam = {'andrew', 'zach', 'calvin'};
  var playCast = {'David', 'Cavlin', 'Claire'};

  print(footballTeam.intersection(playCast));
  print(playCast.intersection(footballTeam));
}