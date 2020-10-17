void main(List<String> arguments) async {
  await Future.wait([getDataA(), getDataB(), getDataC()])
      .then((value) {
    printData(value);
  }).catchError((onError) {
    print(onError);
  });
}

Future<String> getDataA() async {
  var data = await getData('Data A');
  return data;
}

Future<String> getDataB() async {
  var data = await getData('Data B');
  return data;
}

Future<String> getDataC() async {
  var data = await getData('Data C');
  return data;
}

void printData(List<String> data) {
  print(data);
}

String getData(data) {
  return data;
}
