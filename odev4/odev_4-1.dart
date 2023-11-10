
void main(List<String> args) {

  print("******************");
  print("Lütfen Sıra Girin");
  print("******************");

  print("1nci sıra");
  ikinciSira().then((gelecekDeger) => print(gelecekDeger));
  print("3ncü sıra");
}

Future<String> ikinciSira() {
  return Future<String>.delayed(Duration(seconds: 3), () => "2nci sıra");
}
