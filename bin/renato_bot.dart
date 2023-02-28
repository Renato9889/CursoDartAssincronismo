import 'dart:io';

import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'questions/music_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String renatoBot = 'RenatoBOT:\n';
  var a = true;
  String usuario = '';

  var mystream = BotClock().renatoBotStream(1,20);
  var subscriber = mystream.listen((event) {
    print("                             Renatobot esta ativo a: $event segundos");
  }, onDone: (){
    print("RenatoBot está sendo finalizado! Faça a ultima pergunta.");
    a = false;
  });

  print('-- Iniciando o RenatoBOT, aguarde..--');
  await BotClock().clock(2);
  print('RenatoBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Tchau') ||
        usuario.contains('tchau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(renatoBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
      await BotClock().clock(3);
    } else if (MusicQuestions(usuario.toLowerCase()).isThisAMusic()) {
      MusicQuestions(usuario.toLowerCase()).musicQuestion();
      await BotClock().clock(3);
    } else if (GoodManners(usuario.toLowerCase()).isThisManners()) {
      GoodManners(usuario.toLowerCase()).goodManners();
      await BotClock().clock(3);
    } else {
      await BotClock().clock(5);
      print(renatoBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(renatoBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando RenatoBOT--');
}
