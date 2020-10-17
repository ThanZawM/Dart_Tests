void main() async {
  var stream = createStream(7);

  /* var subscription = stream.listen(null);
  subscription.onData((data) {
    print('Num : $data');
  });
  subscription.onError((handleError) {
    print('Error : $handleError');
  });
  subscription.onDone(() {
    print('Finished!');
  }); */

  /* stream.where((event) => event > 3).listen((event) {
    print('Num : $event');
  }); */

  var str = createStream(6);
  //await str.isEmpty.then((value) => print('isEmpty : $value'));

  //await str.last.then((value) => print(value));

  await str.length.then((value) => print(value));

  //await print(str.isBroadcast.toString());
}

Stream<int> createStream(int num) async* {
  for (var i = 0; i < num; i++) {
    /* if (i == 5) {
      throw Exception('Demo Error with num = 5!');
    } */
    yield i;
  }
}
