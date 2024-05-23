//streams
//Son flujos de informacion que pueden estar emitiendo valores periodicamente, una vez o nunca

//Son como flujo de agua (el flujo es el stream)
//puede cerrarse o abrirse.
void main(){
  emitNumbers().listen((value){
    print('emit: $value');
  });
}

Stream<int> emitNumbers(){
  return Stream.periodic(const Duration(seconds: 1), (value){
    return value;
  }).take(5);
}