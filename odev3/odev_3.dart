import 'dart:math';

Random ran = new Random();

int? generateRandom() {
  bool? randomNumber = ran.nextBool();
  int? hundredOrNull;
  if (randomNumber == true)
    hundredOrNull = 100;
  else
    hundredOrNull = null;

  int status = hundredOrNull ?? 0;
  return status;
}

void main() {
  print(generateRandom());
}‚