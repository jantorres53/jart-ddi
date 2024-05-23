void main(){
  print(saludar());
  print(greetEveryone());
  print(agregarNumeros(5,5));
  print(addTwoNumbers(5, 5));
  print(agregarDosNumerosOpcional(4, ));
  print(greetPerson(message:'Hello', name:'RataPro'));
  print(greetPerson(name:'RataPro'));
}

String saludar(){
  return "Hola a todos";
}

//Metodos lamda
String greetEveryone() => "Hello Everyone";

int agregarNumeros(int a, int b){
  return a + b;
}
//Convertir la funcion a lamda, se debe de llamar "addTwoNumbers"
int addTwoNumbers(int a, int b) => a + b;

//variables opcionales
int agregarDosNumerosOpcional(int a, [int? b/*int b = 0*/]){
  /*b = b ?? 0;*/
  b ??= 0;
  return a + b;
}

//Variables por referencia
String greetPerson({required String name, String? message = 'Hola'}){
  return '$message, $name';
}