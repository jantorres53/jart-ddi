//futures
//son un acuerdo de que en el futuro tendras un valor para ser usado

void main(){
  
  print('inicio del programa');
  httpGet('http://').then((value){
    print(value);
  });
  print('Fin del programa');
}

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 2),(){
    return 'Resuesta de la peticion http';
  });
}