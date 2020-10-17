import 'dart:async';

void main(List<String> arguments) {
  var strCtrl = StreamController<String>.broadcast(
    onListen: () => print('onListen'),
    onCancel: () => print('onCancel'),
    //onPause: () => print('onPause'),  // These two function are not included in 'broadcast stream controller'!
    //onResume: () => print('onResume'),
  );

  var strCtrl1 = StreamController<String>.broadcast(
    onListen: () => print('onListen'),
    onCancel: () => print('onCancel'),
  );

  var sub = strCtrl.stream.listen(
    (event) {
      print('Data : $event');
    },
    onError: (e) {
      print('Error : $e');
    },
    onDone: () {
      print('Done');
    },
  );

  strCtrl.sink.add('Myanmar');

  strCtrl.sink.add('English');

  strCtrl.sink.add('Spain');

  strCtrl.sink.addError('Something went wrong');

  //sub.cancel();

  //sub.pause();
  //sub.resume();

  strCtrl.sink.add('Flutter Application Devloper');
  
  
  strCtrl.close();

  var sub2 = strCtrl1.stream.listen((event) {
    print('$event');
  });

  strCtrl1.sink.add('Japan');
  strCtrl1.sink.add('China');

  //sub2.cancel();
  //strCtrl1.close();
}
