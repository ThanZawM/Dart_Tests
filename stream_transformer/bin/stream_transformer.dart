import 'dart:async';

void main(List<String> arguments) {
  var controller = StreamController<String>.broadcast();

  var strTransformer = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      switch (data) {
        case 'fool':
          sink.add('Your are fool');
          break;
        case 'idiot':
          sink.add('Your are idiot');
          break;
        default:
          sink.add(data);
      }
    },
    handleError: (error, stackTrace, sink) {
      sink.addError('Error : $error');
    },
    handleDone: (EventSink sink) {
      print('Done!');
      sink.close();
    },
  );

  var strController = controller.stream.transform(strTransformer);
  strController.listen((event) {
    print(event);
  });

  controller.sink.add('fool');
  controller.sink.add('idiot');
  controller.sink.add('Kyaw Gyi');
  //controller.sink.addError('new error');
  controller.sink.close();
}
