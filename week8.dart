String processGrades(List<dynamic> rawInputs) {
  int totalSum = 0;
  int validCount = 0;

  for (var input in rawInputs) {
    try {
      // Intentionally parsing values to demonstrate error handling
      int score = int.parse(input.toString());

      // Conditional logic checking passing status
      if (score >= 75) {
        print("Score $score: PASS");
      } else {
        print("Score $score: FAIL");
      }

      totalSum += score;
      validCount++;
    } catch (e) {
      // Graceful error handling for invalid input
      print("Error processing input '$input': Invalid number format.");
    }
  }

  if (validCount == 0) return "No valid scores to calculate average.";

  double average = totalSum / validCount;
  return "Average Score: ${average.toStringAsFixed(2)}";
}

void main() {
  print("--- Starting Dart Logic Test ---");

  // Mix of valid integer strings and intentionally invalid inputs
  List<dynamic> testData = ["85", "60", "SIMONOLEA", "92", "74"];

  // Calling the function and printing the result
  String summary = processGrades(testData);

  print("--------------------------------");
  print("Summary Result: $summary");
}
