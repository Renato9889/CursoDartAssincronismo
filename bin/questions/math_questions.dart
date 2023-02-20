import 'dart:io';

class MathQestions{
  String multiplicacao = 'multiplique';
  String divisao = 'divida';
  String subtracao = 'subtraia';
  String soma = 'soma';
  String question;
  String renatoBot = 'RenatoBOT:\n';
  bool isThisAMathQuestion = false;

  MathQestions(this.question);

  bool isThisTime(){
    //verificar se estamos numa pergunta sobre Tempo
    if (question.contains('multiplique') ||
        question.contains('Multiplique') ||
        question.contains('multiplica') ||
        question.contains('Multiplica') ||
        question.contains('x') ||
        question.contains('X') ||
        question.contains('divida') ||
        question.contains('Divida') ||
        question.contains('divide') ||
        question.contains('Divide') ||
        question.contains('/') ||
        question.contains('subtraia') ||
        question.contains('Subtraia') ||
        question.contains('-') ||
        question.contains('some') ||
        question.contains('Some') ||
        question.contains('soma') ||
        question.contains('Soma') ||
        question.contains('+') ){
      isThisAMathQuestion = true;
    }
    return isThisAMathQuestion;
  }

  mathQuestion() {

    if (question == hour) {

      String _botAnswer = renatoBot + ' Opa! são : ${date.hour} horas e ${date.minute} minutos!';
      print(_botAnswer);
    } else if (question == day) {

      String _botAnswer = renatoBot + ' Opa! hoje é dia : ${date.day}';
      print(_botAnswer);
    } else if (question == year) {

      String _botAnswer = renatoBot + ' Opa! estamos em : ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }
}