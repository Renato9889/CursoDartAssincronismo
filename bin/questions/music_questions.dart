import 'dart:io';
import 'dart:math';

class MusicQuestions {
  String pop = "me indique uma musica pop";
  String mpb = "me indique uma musica mpb";
  String indie = "me indique uma musica indie";
  String kpop = "me indique uma musica kpop";
  String rock = "me indique uma musica rock";
  String sertanejo = "me indique uma musica sertaneja";
  String funk = "me indique uma musica funk";
  String question;
  var indexmusica = Random().nextInt(10);
  bool isThisAMuiscQuestion = false;
  String renatoBot = 'RenatoBOT:\n';

  MusicQuestions(this.question);

  var musicasPop = [
    "Used To Know Me - Charli XCX",
    "Nonsense - Sabrina Carpenter",
    "Don't Go Yet - Camila Cabello",
    "Scars To Your Beatiful - Alessia Cara",
    "Anti-Hero - Taylor Swift",
    "deja vu - Olivia Rodrigo",
    "Good Enough - Gabrielle Aplin",
    "CUFF IT - Beyonce",
    "Chained To The Rhythm - Katy Perry",
    "911 - Lady Gaga"
  ];

  var musicasMPB = [
    "Idiota - Jão",
    "Ela  - Clarissa",
    "Cruel - Nina Fernandes",
    "música segreta - Manu Gavassi",
    "Explodir - ANAVITORIA",
    "O Outro é Você - OUTROEU",
    "É Osso - Jovem Dionisio",
    "Oi - Lagum",
    "Lisboa - ANAVITORIA",
    "Essa Eu Fiz Pro Nosso Amor - Jão",
    "Partilhar - Rubel e ANAVITORIA"
  ];

  var musicasIndie = [
    "Aligator - Of Monsters and Men",
    "dead girl in the pool - girl in red",
    "Home - Gabrielle Aplin",
    "4AM - Bastille",
    "Norman fucking Rockwell - Lana Del Rey",
    "My Eyes - The Lumineers",
    "victim of nostalgia - mxmtoon",
    "The River - Aurora",
    "Don't Fade - Vance Joy",
    "summer depression - girl in red"
  ];

  var musicasKpop = [
    "Teddy Bear - STAYC",
    "OMG - NewJeans",
    "Psycho - Red Velvet",
    "WANNABE - ITZY",
    "KISS - TRI.BE",
    "ANTIFRAGILE - LE SSERAFIM",
    "Illusion - aespa",
    "POP! - NAYEON",
    "I CAN'T STOP ME - TWICE",
    "Lovesick Girls - BLACKPINK"
  ];

  var musicasRock = [
    "Californication - Red Hot Chili Peppers",
    "There is a Light That Never Goes Out - The Smiths",
    "When The Whip Comes Down - The Rolling Stones",
    "I Want To Break Free - Queen",
    "O Tempo Não Para - Cazuza",
    "Goodbye Yellow Brick Road - Elton John",
    "Here Comes The Sun - The Beatles",
    "Zombie - The Cranberries",
    "Running Up That Hill - Kate Bush",
    "One Way Or Another - Blondie"
  ];

  var musicasFunk = [
    "AMEIANOITE - Pabllo Vittar e Gloria Groove",
    "VERMELHO - Gloria Groove",
    "CAFÉ DA MANHÃ ;P - Luisa Sonza e LUDMILLA",
    "Gueto - IZA",
    "Barbie - Rebecca, POCAH, Lexa e Danny Bond",
    "NO CHÃO NOVINHA - ANITTA E PEDRO SAMPAIO",
    "MODO TURBO - Luisa Sonza, Pabllo Vittar e Anitta",
    "Kikadão - Kika Boom",
    "Rainha da Favela - LUDMILLA",
    "Verdinha - LUDMILLA"
  ];

  var musicasSertaneja = [
    "Leão - Marília Mendonça",
    "Casa da Mãe Joana - Marília Mendonça",
    "Bebi Liguei - Marília Mendonça",
    "Sem Sal - Marília Mendonça",
    "Um Dia Te Levo Comigo - Jorge e Mateus",
    "Mistérios - Jorge e Mateus",
    "Regime Fechado - Simone e Simaria",
    "Medo Bobo - Maiara e Maraisa",
    "Pipoco - Ana Castela e Melody",
    "50 Reais - Naiara Azevedo"
  ];

  bool isThisAMusic() {
    if (question.contains('pop') ||
        question.contains('musica') ||
        question.contains('música') ||
        question.contains('kpop') ||
        question.contains('rock') ||
        question.contains('indie') ||
        question.contains('mpb') ||
        question.contains('funk') ||
        question.contains('sertanejo')) {
      isThisAMuiscQuestion = true;
    }
    return isThisAMuiscQuestion;
  }

  musicQuestion() {
    if (question == pop) {
      String _botAnswer = renatoBot +
          ' Aqui um POP para você escutar! Musica: ${musicasPop[indexmusica]}';
      print(_botAnswer);
    } else if (question == mpb) {
      String _botAnswer = renatoBot +
          ' Aqui um MPB para você escutar! Musica: ${musicasMPB[indexmusica]}';
      print(_botAnswer);
    } else if (question == kpop) {
      String _botAnswer = renatoBot +
          ' Aqui um KPOP para você escutar! Musica: ${musicasKpop[indexmusica]}';
      print(_botAnswer);
    } else if (question == sertanejo) {
      String _botAnswer = renatoBot +
          ' Aqui um Sertanejo para você escutar! Musica: ${musicasSertaneja[indexmusica]}';
      print(_botAnswer);
    } else if (question == indie) {
      String _botAnswer = renatoBot +
          ' Aqui um Indie para você escutar! Musica: ${musicasIndie[indexmusica]}';
      print(_botAnswer);
    } else if (question == rock) {
      String _botAnswer = renatoBot +
          ' Aqui um Rock para você escutar! Musica: ${musicasRock[indexmusica]}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('kpop')) {
      String _botQuestion =
          renatoBot +
              ' Não entendi, você quer que eu indique uma musica KPOP para você?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = renatoBot +
            ' Beleza,  Aqui um KPOP para você escutar! Musica: ${musicasKpop[indexmusica]}';
        print(_botAnswer);
      } else {
        String _botAnswer = renatoBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('mpb')) {
      String _botQuestion =
          renatoBot +
              ' Não entendi, você quer que eu indique uma musica MPB para você?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = renatoBot +
            ' Beleza, Aqui um MPB para você escutar! Musica: ${musicasMPB[indexmusica]}';
        print(_botAnswer);
      } else {
        String _botAnswer = renatoBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('pop')) {
      String _botQuestion =
          renatoBot +
              'Não entendi, você quer que eu indique uma musica de POP para você?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = renatoBot +
            ' Beleza, Aqui um POP para você escutar! Musica: ${musicasPop[indexmusica]}';
        print(_botAnswer);
      } else {
        String _botAnswer = renatoBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('rock')) {
      String _botQuestion =
          renatoBot +
              'Não entendi, você quer que eu indique uma musica de ROCK para você?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = renatoBot +
            ' Beleza, Aqui um ROCK para você escutar! Musica: ${musicasRock[indexmusica]}';
        print(_botAnswer);
      } else {
        String _botAnswer = renatoBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('funk')) {
      String _botQuestion = renatoBot +
          'Não entendi, você quer que eu indique uma musica de FUNK para você?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = renatoBot +
            ' Beleza, Aqui um FUNK para você escutar! Musica: ${musicasFunk[indexmusica]}';
        print(_botAnswer);
      } else {
        String _botAnswer = renatoBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('indie')) {
      String _botQuestion = renatoBot +
          'Não entendi, você quer que eu indique uma musica INDIE para você?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = renatoBot +
            ' Beleza, Aqui um INDIE para você escutar! Musica: ${musicasIndie[indexmusica]}';
        print(_botAnswer);
      } else {
        String _botAnswer = renatoBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('sertanejo') || question.contains('sertaneja')) {
      String _botQuestion = renatoBot +
          'Não entendi, você quer que eu indique uma musica SERTANEJA para você?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = renatoBot +
            ' Beleza, Aqui um SERTANEJO para você escutar! Musica: ${musicasSertaneja[indexmusica]}';
        print(_botAnswer);
      } else {
        String _botAnswer = renatoBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    }
  }
}
