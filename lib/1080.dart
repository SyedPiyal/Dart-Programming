import 'dart:io';

void main() {
  String startDayLine = stdin.readLineSync()!;
  String startTimeLine = stdin.readLineSync()!;
  String endDayLine = stdin.readLineSync()!;
  String endTimeLine = stdin.readLineSync()!;

  int startDay = int.parse(startDayLine.split(' ')[1]);
  int endDay = int.parse(endDayLine.split(' ')[1]);

  List<int> startTime = startTimeLine.split(' : ').map(int.parse).toList();
  List<int> endTime = endTimeLine.split(' : ').map(int.parse).toList();

  int startTotalSeconds = (startDay - 1) * 86400 +
      startTime[0] * 3600 +
      startTime[1] * 60 +
      startTime[2];
  int endTotalSeconds =
      (endDay - 1) * 86400 + endTime[0] * 3600 + endTime[1] * 60 + endTime[2];

  int durationSeconds = endTotalSeconds - startTotalSeconds;

  int days = durationSeconds ~/ 86400;
  durationSeconds %= 86400;
  int hours = durationSeconds ~/ 3600;
  durationSeconds %= 3600;
  int minutes = durationSeconds ~/ 60;
  int seconds = durationSeconds % 60;

  print('$days dia(s)');
  print('$hours hora(s)');
  print('$minutes minuto(s)');
  print('$seconds segundo(s)');
}
