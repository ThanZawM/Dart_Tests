import 'dart:async';

void main() async {
  var stream = createIntStream(5);
  //await printStream(stream);
  var t = await addEvent(stream);
  print(t);
}

Stream<int> createIntStream(int num) async* {
  for (var i = 0; i < num; i++) {
    yield i;
  }
}

/* Future<void> printStream(Stream<int> str) async {
  await str.forEach((element) {
    print(element);
  }); */

// await for (var i in str) {
//   print(i);
// }
//}

Future<int> addEvent(Stream<int> str) async {
  var total = 0;
  await for (var i in str) {
    total += i;
  }
  return total;
}
