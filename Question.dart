void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> averages = {};
  for (var student in students) {
    List<int> scores = List<int>.from(student['scores']);
    double sum = 0;
    for (var score in scores) {
      sum += score;
    }
    double avg = sum / scores.length;
    averages[student['name']] = double.parse(avg.toStringAsFixed(2));
  }

  var sortedEntries = averages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  print("{");
  for (var entry in sortedEntries) {
    print('  "${entry.key}": ${entry.value},');
  }
  print("}");
}
