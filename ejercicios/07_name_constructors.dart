void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Araña',
    'isAlive': true
  };
  
  final spiderman = Hero.fromJson(rawJson);
  
  final other = Hero(power: 'none', name: 'other', isAlive: false);
  
  print(spiderman);
  print(other);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'no name found',
      power = json['power'] ?? 'no power found',
      isAlive = json['isAlive'] ?? 'no isAlive found';
  
  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'yes' : 'no'}';
  }
}
