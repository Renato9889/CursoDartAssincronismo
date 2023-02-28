import 'dart:async';

void main() async{
  Stream myStream(int interval, [int? maxCount]) async*{
    int i = 1;
    while(i != maxCount){
      print("Conting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("The Stream is finished");
  }

  var pauloStram = myStream(1,20).asBroadcastStream();
  StreamSubscription mySubscriber = pauloStram.listen((event) {
    if(event.isEven){
      print("This Number is Even!!!");
    }
  },onError: (e){print("An Error happend: $e");
  },onDone: (){
    print("The subscriber is gone.");
  });
  pauloStram.map((event) => 'Subsber 2 watching: $event').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print("Stream paused");
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print("Stream resumed");
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print("Stream canceled");


  print('Main is finished');
}