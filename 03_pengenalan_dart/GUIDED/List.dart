void main() {
  List<int> fixedList = List.filled(3, 0);

  fixedList[0] = 10;
  fixedList[1] = 20;
  fixedList[2] = 30;

  print('fixed Lenght List: $fixedList');

  List<int> growableList = [];

  growableList.add(11);
  growableList.add(25);
  growableList.add(35);

  print(growableList);

  growableList.remove(11);

  print(growableList);
}