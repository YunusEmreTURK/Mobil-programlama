class Camera {
  int? _id;
  String? _brand;
  String? _color;
  int? _prize;

  // Constructor
  Camera(this._id, this._brand, this._color, this._prize);

  // Getters
  String get brand => "$_brand";
  String get color => this._color!;
  int get id => this._id!;
  int get prize {
    return this._prize!;
  }

  // Setters
  set brand(String brand) => _brand = brand;
  set id(int id) {
    if (id < 0)
      throw Exception("id should be higher than 0");
    else
      this._id = id;
  }

  set color(String color) => _color = color;
  set prize(int prize) => _prize = prize;
}

void main() {
  Camera cam1 = Camera(1, "Nikon", "Black", 10000);
  print(cam1.brand); // getter kullanımı

  cam1.brand = "Kodak"; // setter kullanımı
  print(cam1.brand);

  Camera cam2 = Camera(2, "Samsung", "Blue", 5000);
  Camera cam3 = Camera(3, "Huawei", "Grey", 20000);

  var cams = [cam1, cam2, cam3];
  cams.forEach((cam) {
    print(cam.brand);
    print(cam.id);
    print(cam.prize);
    print(cam.color);
    print("");
  });
}
