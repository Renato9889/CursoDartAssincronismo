
class GoodManners{
  String question;
  bool isThisGoodManners = false;
  String renatoBot = 'RenatoBOT:\n';
  GoodManners(this.question);

  bool isThisManners(){
    if (question.contains('oi') ||
        question.contains('ola') ||
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('obrigade') ||
        question.contains('bom') ||
        question.contains('boa') ||
        question.contains('tarde') ||
        question.contains('noite') ||
        question.contains('de nada')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners(){
    if(question.contains('bom dia')){
      print(renatoBot + '--------- Bom dia :) ---------');
    }else if(question.contains('boa tarde')){
      print(renatoBot + '+++++++++ Boa tarde :) +++++++++');
    } else if(question.contains("boa noite")){
      print(renatoBot+"********* Boa noite :) *********");
    } else if(question.contains("oi")||question.contains("ola")){
      print("Muito prazer!!! Sou o RenatoBOT e espero que esteja bem :)");
    }else if(question.contains("obrigado")||question.contains("obrigada")||question.contains("obrigade")){
      print("De nada, fique a vontade, e não se esqueça que sou otimo em indicar musicas ;)");
    }else{
      print("que tal fazer uma pergunta :)");
    }
  }

}