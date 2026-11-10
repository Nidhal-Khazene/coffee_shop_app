import 'display_name.dart';

class Landmark {
  String? name;
  String? placeId;
  DisplayName? displayName;
  List<String>? types;
  double? straightLineDistanceMeters;
  double? travelDistanceMeters;

  Landmark({
    this.name,
    this.placeId,
    this.displayName,
    this.types,
    this.straightLineDistanceMeters,
    this.travelDistanceMeters,
  });

  factory Landmark.fromJson(Map<String, dynamic> json) => Landmark(
    name: json['name'] as String?,
    placeId: json['placeId'] as String?,
    displayName: json['displayName'] == null
        ? null
        : DisplayName.fromJson(json['displayName'] as Map<String, dynamic>),
    types: (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    straightLineDistanceMeters: (json['straightLineDistanceMeters'] as num?)
        ?.toDouble(),
    travelDistanceMeters: (json['travelDistanceMeters'] as num?)?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'placeId': placeId,
    'displayName': displayName?.toJson(),
    'types': types,
    'straightLineDistanceMeters': straightLineDistanceMeters,
    'travelDistanceMeters': travelDistanceMeters,
  };
}
