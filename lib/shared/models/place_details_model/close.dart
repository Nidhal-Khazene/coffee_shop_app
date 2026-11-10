class Close {
  int? day;
  int? hour;
  int? minute;

  Close({this.day, this.hour, this.minute});

  factory Close.fromJson(Map<String, dynamic> json) => Close(
    day: json['day'] as int?,
    hour: json['hour'] as int?,
    minute: json['minute'] as int?,
  );

  Map<String, dynamic> toJson() => {'day': day, 'hour': hour, 'minute': minute};
}
