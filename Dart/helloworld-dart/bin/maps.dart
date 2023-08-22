void main()
{
  var employees = {
    'David': 10,
    'Claire': 5,
    'Calvin': 3
  };
  print(employees['David']);
  employees['Zed'] = 1;
  print(employees);
  print(employees['MIssing']);
}