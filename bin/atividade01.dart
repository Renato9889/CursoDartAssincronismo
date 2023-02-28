void main(){
  Future conversa = Future(() async {
    print("Renato: Bom dia, meu amor!");
    await Future.delayed(Duration(seconds: 2));
    print("Paulo: Bom dia, vida!! Dormiu bem?");
    await Future.delayed(Duration(seconds: 2));
    print("Renato: Dormi sim meu amorzão, e você?");
    await Future.delayed(Duration(seconds: 3));
    print("Paulo: Tambem, só tive um sonho estranho!!!");
    await Future.delayed(Duration(seconds: 2));
    print("Renato: kkkkkkkkk eu tbm");
    await Future.delayed(Duration(seconds: 2));
    return "bla bla bla ....";
  }).then((value) => print(value));
}