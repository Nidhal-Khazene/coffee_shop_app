import 'polyline.dart';

class SingleRouteModel {
  int? distanceMeters;
  String? duration;
  Polyline? polyline;

  SingleRouteModel({this.distanceMeters, this.duration, this.polyline});

  factory SingleRouteModel.fromJson(Map<String, dynamic> json) =>
      SingleRouteModel(
        distanceMeters: json['distanceMeters'] as int?,
        duration: json['duration'] as String?,
        polyline: json['polyline'] == null
            ? null
            : Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
    'distanceMeters': distanceMeters,
    'duration': duration,
    'polyline': polyline?.toJson(),
  };
}
