import 'dart:math';

final Map<int, String> daysOfWeek = {
  1: "Sat",
  2: "Sun",
  3: "Mon",
  4: "Tue",
  5: "Wed",
  6: "Thu",
  7: "Fri",
};

// min 5
// max 10

int rendomBetween(int min, int max) {
  return Random().nextInt(max - min) + min;
}

String formatNumber(int number) {
  return number.toString().replaceAllMapped(
    RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
    (Match m) => '${m[1]},',
  );
}
