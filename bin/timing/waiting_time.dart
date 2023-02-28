class BotClock{

  Future clock(int segundos){
    return Future.delayed(Duration(seconds: segundos));
  }

  Stream renatoBotStream(int interval, [int? maxCount]) async*{
    int i = 1;
    while(i != maxCount){
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("A Stream terminou.");
  }
}