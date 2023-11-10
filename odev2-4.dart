class Animals {
  int? id;
  String? name;
  String? color;

  void displayInfo() {
    print("Animal id = $id");
    print("Animal name = $name");
    print("Animal color = $color");
  }
}

class Cat extends Animals {
  String? Sound;
  Cat(String Sound) {
    this.Sound = Sound;
  }
}

void main() {
  Cat cat1 = Cat("Kedi");
  cat1.id = 1;
  cat1.name = "Tekir";
  cat1.color = "Kırmızı";
  cat1.displayInfo();
}
