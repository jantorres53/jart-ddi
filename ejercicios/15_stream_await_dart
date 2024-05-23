//streams
//Son flujos de informacion que pueden estar emitiendo valores periodicamente, una vez o nunca

//Son como flujo de agua (el flujo es el stream)
//puede cerrarse o abrirse.
void main(){
  emitNumbers().listen((value){
    print('emit: $value');
  });
}

Stream<int> emitNumbers() async * {
  final valueTest =[1,2,3,4,5];
  
  for (int i in valueTest) {
    await Future.delayed(const Duration(seconds: 1));
    
    //ceder valor
    yield i;
  }
}