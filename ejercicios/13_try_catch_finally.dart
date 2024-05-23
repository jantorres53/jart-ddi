//futures
//son un acuerdo de que en el futuro tendras un valor para ser usado

void main() async{
  
  print('inicio del programa');
  
  try{
    final value = await httpGet('http://');
    print(value);
  }on Exception catch(err){
    print('Execption: $err');
  }catch(err){
    print('Error general: $err');
  }finally{
    print('Entra al bloque finally');
  }
  
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 2));
  
  throw Exception('no hay parametros en la url');
  //throw 'error de la peticion';
  //return 'respuesta de la peticion http';
}