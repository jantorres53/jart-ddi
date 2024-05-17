void main(){
  final Map<String, dynamic>game = {
    'name' : 'zelda',
    'starts' : 5,
    'isRPG': false,
    'types': <String>['Adventure', 'RPG'],
    'cover':{
      1: 'zelda/front.png',
      2: 'zelda/back.png'
    }
  };
  
  print(game);
  print('Nombre${ game['name']}');
  print('Cover: ${ game['cover']}');
  print('Cover Back: ${ game['cover'][1]} ');
  print('Cover Front: ${ game['cover'][1]} ');
  
}