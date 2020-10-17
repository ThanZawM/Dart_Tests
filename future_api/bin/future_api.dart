import 'dart:async';

void main(List<String> arguments) {
  var f = makeDataCall();
  f.then((value) {
    print(value);
  }).catchError((onError) {
    print(onError);
  });
}

Future<String> makeDataCall() async {
  var data = await getData();
  return data;
  //throw Exception('Error!');  // <= if no return because of error!
  
}

String getData() {
  return 'hola';
}
