class House {
  int? id;
  int? price;
  String? owner;
  House(int id, int price, String owner) {
    this.id = id;
    this.price = price;
    this.owner = owner;
  }

  void displayInfo() {
    print("House id = $id");
    print("House price = $price");
    print("House owner = $owner");
  }
}

void main() {
  House hs1 = House(1, 32000, "Melik");
  House hs2 = House(2, 20000, "Halit");
  House hs3 = House(3, 43000, "Mert");

  var houses = [hs1, hs2, hs3];
  houses.forEach((house) => house.displayInfo());
}
