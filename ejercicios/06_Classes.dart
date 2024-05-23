void main(){
  final Hero ironMan = new Hero(name: 'ironMan', power: 'Otro');
  final Hero rataPro777 = new Hero(name: 'rataPro777');
  
  print(ironMan);
  print(ironMan.name);
  print(ironMan.power);
  
  print(rataPro777);
  print(rataPro777.name);
  print(rataPro777.power);
}

class Hero{
  String name;
  String power;
  
  Hero({
    required this.name,
    this.power = 'Yutuber'
  });
  //Hero(this.name, this.power);
  
  /*
   Hero(String pName, String pPower)
    :name = pName,
     power = pPower;
  */
    
  @override
  String toString(){
    return '$name - $power';
  }
}