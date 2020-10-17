void main(List<String> arguments) async {
  var stream = createStream(9);
  //var total = await printStream(stream);
  //print('Total Result = $total');

  stream.listen((x) {
    print('num : $x');
  }, onError: (err) {
    print('Error : $err');
  }, onDone: () {
    print('Finished');
  });
}

Stream<int> createStream(int num) async* {
  for (var i = 0; i < num; i++) {
    if (i == 5) {
      throw Exception('Demo Error with num = 5!');
    }
    yield i;
  }
}

Future<int> printStream(Stream<int> str) async {
  var total = 0;
  try {
    await for (var i in str) {
      total += i;
    }
  } catch (error) {
    return -1;
  }
  return total;
}
