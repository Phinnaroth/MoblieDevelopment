class MyDuration {
  int _milliseconds;

  MyDuration(this._milliseconds) {
    if (_milliseconds < 0) {
      throw ArgumentError('Duration cannot be negative.');
    }
  }

  MyDuration.fromHours(int hours) : this(hours * 3600000);
  MyDuration.fromMinutes(int minutes) : this(minutes * 60000);
  MyDuration.fromSeconds(int seconds) : this(seconds * 1000);

  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }

  bool operator >(MyDuration other) {
    return this._milliseconds > other._milliseconds;
  }

  MyDuration operator +(MyDuration other) {
    return MyDuration(this._milliseconds + other._milliseconds);
  }

  MyDuration operator -(MyDuration other) {
    var result = this._milliseconds - other._milliseconds;
    if (result < 0) {
      throw ArgumentError('Subtraction result would be negative.');
    }
    return MyDuration(result);
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1 > duration2); // true
  

  try {
    print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e);
  }
}