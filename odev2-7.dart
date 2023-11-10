import "dart:io";

List<String> countrys = [
  "Jamaica",
  "Japan",
  "Kenya",
  "Nepal",
  "Nigeria",
  "North Korea",
  "Russia",
  "Türkiye"
  "USA",
  "India",
  "China",
  "Malaysia",
  "Germany",
  "Georgia",
  "Greece",
  "Indonesia",
  "Iran",
  "Iraq",
  "Ireland",
  "Italy",

];
List<String> capitals = [
  "Kingston",
  "Tokyo",
  "Nairobi",
  "Kathmandu",
  "Abuja",
  "Pyongyang",
  "Moscow",
  "Ankara"
  "Washington, D.C.",
  "New Delhi",
  "Beijing",
  "Kuala Lumpur",
  "Berlin",
  "Tbilisi",
  "Athens",
  "Jakarta",
  "Tehran",
  "Baghdad",
  "Dublin",
  "Rome",

];

class Quiz {
  int _score = 0;
  List<String> _question = [];
  List<String> _answer = [];
  int _questionIndex;

  int get score => this._score;

  Quiz(this._question, this._answer, this._questionIndex) {
    int soru_sayisi = _questionIndex;
    print("What is the capital of " + _question[_questionIndex]);
    print((soru_sayisi).toString() + ") " + _answer[_questionIndex]);
    print((soru_sayisi + 1).toString() + ") " + _answer[_questionIndex + 1]);
    print((soru_sayisi + 2).toString() + ") " + _answer[_questionIndex + 2]);

    int? secim = int.parse(stdin.readLineSync()!);
    if (secim == soru_sayisi) {
      _score += 10;
    }
  }
}

void main() {
  int questionIndex = 0;

  Quiz soru1 = Quiz(countrys, capitals, questionIndex++);
  Quiz soru2 = Quiz(countrys, capitals, questionIndex++);
  Quiz soru3 = Quiz(countrys, capitals, questionIndex++);
  Quiz soru4 = Quiz(countrys, capitals, questionIndex++);
  Quiz soru5 = Quiz(countrys, capitals, questionIndex++);

  String finalScore =
      (soru1.score + soru2.score + soru3.score + soru4.score + soru5.score)
          .toString();

  print("Test bitti. Puanınız : " + finalScore);
}