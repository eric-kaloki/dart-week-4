import 'dart:io';

void main() {
  // String Manipulation
  String input = "Hello Dart!";
  print("Original String: $input");
  
  // Concatenation
  String concatenated = input + " Welcome to string manipulation.";
  print("Concatenated String: $concatenated");
  
  // Interpolation
  String interpolated = "The length of the string is ${input.length}.";
  print(interpolated);
  
  // Substring Extraction
  String substring = input.substring(6, 10);
  print("Extracted Substring: $substring");
  
  // Case Conversion
  print("Uppercase: ${input.toUpperCase()}");
  print("Lowercase: ${input.toLowerCase()}");
  
  // Reverse String
  String reversed = input.split('').reversed.join('');
  print("Reversed String: $reversed");
  
  // String Length
  print("String Length: ${input.length}");

  // Collections
  // List
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  fruits.add("Date");
  fruits.remove("Banana");
  print("List of Fruits: $fruits");
  
  // Set
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(5);
  numbers.remove(2);
  print("Set of Numbers: $numbers");
  
  // Map
  Map<String, int> scores = {"Alice": 90, "Bob": 85};
  scores["Charlie"] = 88;
  scores.remove("Alice");
  print("Map of Scores: $scores");

  // File Handling
  try {
    File inputFile = File('input.txt');
    File outputFile = File('output.txt');
    
    // Write to file
    outputFile.writeAsStringSync("This is a sample output file.");
    print("Data written to output.txt");
    
    // Read from file
    if (inputFile.existsSync()) {
      String content = inputFile.readAsStringSync();
      print("Content of input.txt: $content");
    } else {
      print("input.txt does not exist.");
    }
  } catch (e) {
    print("Error during file operations: $e");
  }

  // Date and Time
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");
  
  DateTime future = now.add(Duration(days: 5));
  print("Date after 5 days: $future");
  
  DateTime past = now.subtract(Duration(days: 5));
  print("Date 5 days ago: $past");
  
  Duration difference = future.difference(past);
  print("Difference between dates: ${difference.inDays} days");

  // Exercise: Combining Utilities
  List<Map<String, dynamic>> log = [];
  
  String userInput = "Sample User Input";
  String manipulated = userInput.toUpperCase();
  log.add({
    "input": userInput,
    "manipulated": manipulated,
    "timestamp": DateTime.now().toString()
  });
  
  File logFile = File('log.txt');
  logFile.writeAsStringSync(log.map((entry) => entry.toString()).join('\n'));
  print("Log saved to log.txt");
}
