import 'dart:io';

void main() {
  
  List<int> getListInput(String listName) {
    print("Enter the number of elements in $listName:");
    int n = int.parse(stdin.readLineSync()!);
    
    List<int> list = [];
    print("Enter $n integers for $listName (separated by spaces):");
    list = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    
    return list;
  }

 
  List<int> list1 = getListInput("List 1");
  List<int> list2 = getListInput("List 2");

  
  Set<int> commonSet = list1.toSet().intersection(list2.toSet());

 
  List<int> commonElements = commonSet.toList();

  // Print the result
  print("Common elements: $commonElements");
}
