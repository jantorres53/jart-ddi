// Una clase abstracta no se uede instanciar como si misma
// es un molde para crear otro molde
// pueden crear funciones sin implementacion
void main() {
  final plantaViento = PlantaAire(energiaInicial:100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia:8);
  
  print('viento: ${cargarBateria(plantaViento)}');
  print('Nuclear: ${cargarBateria(plantaNuclear)}');
  
}

double cargarBateria(PlantaEnergia planta){
  if(planta.cantidadEnergia < 10){
    throw Exception('Sin energia suficiente');
  }
  return planta.cantidadEnergia;
}

enum TipoPlanta{
  viento,
  agua,
  nuclear
}

abstract class PlantaEnergia{
  
  double cantidadEnergia;
  final TipoPlanta tipo; // agua, viento, etc....
  
  PlantaEnergia({
    required this.cantidadEnergia,
    required this.tipo
  });
  
  void consumidorEnergia(double cantidad);
  
}

// extends or imlements
// extends: extender o heredar de una clase
class PlantaAire extends PlantaEnergia{
  
  PlantaAire({required double energiaInicial})
    : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);
  
  @override
  void consumidorEnergia(double cantidad){
    cantidadEnergia -= cantidad;
  }
}

class PlantaNuclear implements PlantaEnergia{
  
  @override
  double cantidadEnergia;
  
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;
  
  PlantaNuclear({required double this.cantidadEnergia});
  
  @override
  void consumidorEnergia(double cantidad){
    cantidadEnergia -= cantidad; 
  }
  
}