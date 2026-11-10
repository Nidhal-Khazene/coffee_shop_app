import 'display_name.dart';
import 'location.dart';

class NavigationPoint {
  String? navigationPointToken;
  Location? location;
  List<String>? travelModes;
  List<String>? usages;
  DisplayName? displayName;

  NavigationPoint({
    this.navigationPointToken,
    this.location,
    this.travelModes,
    this.usages,
    this.displayName,
  });

  factory NavigationPoint.fromJson(Map<String, dynamic> json) {
    return NavigationPoint(
      navigationPointToken: json['navigationPointToken'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      travelModes: (json['travelModes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      usages: (json['usages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      displayName: json['displayName'] == null
          ? null
          : DisplayName.fromJson(json['displayName'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
    'navigationPointToken': navigationPointToken,
    'location': location?.toJson(),
    'travelModes': travelModes,
    'usages': usages,
    'displayName': displayName?.toJson(),
  };
}
