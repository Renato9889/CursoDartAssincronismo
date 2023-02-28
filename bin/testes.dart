void main(){
  Future exterminador = Future(() async{
    print('Venha comigo se quiser viver');
    await Future.delayed(Duration(seconds: 1));
    print('.');
    await Future.delayed(Duration(seconds: 1));
    print('.');
    await Future.delayed(Duration(seconds: 1));
    print('.');
    await Future.delayed(Duration(seconds: 1));
    print('.');
    await Future.delayed(Duration(seconds: 1));
    print('.');
    return 'Hasta la vista, baby';
  }).then((value) => print(value));
}