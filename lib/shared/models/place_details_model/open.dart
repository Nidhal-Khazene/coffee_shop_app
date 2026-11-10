class Open {
  int? day;
  int? hour;
  int? minute;

  Open({this.day, this.hour, this.minute});

  factory Open.fromJson(Map<String, dynamic> json) => Open(
    day: json['day'] as int?,
    hour: json['hour'] as int?,
    minute: json['minute'] as int?,
  );

  Map<String, dynamic> toJson() => {'day': day, 'hour': hour, 'minute': minute};
}
