import 'dart:async';

Stream<int> createStream(int num) async* {
  for (var i = 0; i < num; i++) {
    yield i;
  }
}

void main(List<String> arguments) async {
  var stream = createStream(6);
  var bstream = stream.asBroadcastStream();

  await bstream.first.then((val) {
    print(val);
  });

  await bstream.last.then((val) {
    print(val);
  });

  await bstream.isEmpty.then((value) => print('isEmpty : $value'));

  stream = createStream(10);
  bstream = stream.asBroadcastStream();

  await bstream.isEmpty.then((value) => print('isEmpty : $value'));

  /* await bstream.take(3).listen((event) {
    print(event);
  }); */

  /* await bstream
      .takeWhile((element) => element > 0 && element < 4)
      .listen((event) {
    // Check element is from 'zero'! So, it works.
    print(event);
  }); */

  /* await bstream.skip(3).listen((event) {
    print(event);
  }); */

  await bstream
      .skipWhile((element) => element > 0 && element < 6)   // Check element is from 'zero'! So, it works.
      .listen((event) {
    print(event);
  });
}
