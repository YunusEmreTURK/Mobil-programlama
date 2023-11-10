import 'dart:async';

Future<void> main() async {
  List<int> originalList = [1, 2, 3, 4, 5];

  List<int> modifiedList = await modifyListAsync(originalList);
  
  print('Original List: $originalList');
  print('Modified List: $modifiedList');
}

Future<List<int>> modifyListAsync(List<int> list) async {
  List<int> modifiedList = [];

  await Future.forEach(list, (int element) async {
    int modifiedElement = await multiplyByTwoAsync(element);
    modifiedList.add(modifiedElement);
  });

  return modifiedList;
}

Future<int> multiplyByTwoAsync(int number) {
  return Future.delayed(Duration(seconds: 1), () => number * 2);
}