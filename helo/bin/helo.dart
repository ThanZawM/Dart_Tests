import 'dart:async';
void main(List<String> arguments) {
  makeDataCall();
}

void makeDataCall() async {
  var data;
  try {
    data = await getData();
    throw Exception('Error!');
  } catch (error) {
    print(error.toString());
  }
  print(data);
}

String getData() {
  return 'hola';
}
