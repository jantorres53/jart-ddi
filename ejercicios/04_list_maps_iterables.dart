void main(){
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  print('Lista original: $numbers');
  print('Lenght: ${ numbers.length}');
  print('Index 0: ${ numbers[0]}');
  print('Firts: ${ numbers.first}');
  print('Last index: ${ numbers[numbers.length -1]}');
  print('Last: ${ numbers.last}');
  print('Desc: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');
  
  //WHERE
  //A la lista original se obtienen los numeros mayores a 5
    //WHERE
  //A la lista original se obtienen los numeros mayores a 5
  final numbersGreaterThan5 = numbers.where((int number){
    return number > 5;
  });
  
  print('> 5 ${numbersGreaterThan5}');
  print('> convert to set to list: ${numbersGreaterThan5.toSet().toList()}');
  
}