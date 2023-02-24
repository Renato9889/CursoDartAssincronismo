import 'dart:io';

import 'questions/time_questions.dart';
import 'questions/music_questions.dart';

void main() async {
  String renatoBot = 'RenatoBOT:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o RenatoBOT, aguarde..--');

  print('RenatoBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
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

    } else if (MusicQuestions(usuario.toLowerCase()).isThisAMusic()) {
      MusicQuestions(usuario.toLowerCase()).musicQuestion();
    } else {
      print(renatoBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(renatoBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando RenatoBOT--');
}
