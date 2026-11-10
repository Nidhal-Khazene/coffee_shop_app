class High {
  double? latitude;
  double? longitude;

  High({this.latitude, this.longitude});

  factory High.fromJson(Map<String, dynamic> json) => High(
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    'latitude': latitude,
    'longitude': longitude,
  };
}
