import 'place_prediction.dart';

class PlaceModel {
  PlacePrediction? placePrediction;

  PlaceModel({this.placePrediction});

  factory PlaceModel.fromJson(Map<String, dynamic> json) {
    return PlaceModel(
      placePrediction: json['placePrediction'] == null
          ? null
          : PlacePrediction.fromJson(
              json['placePrediction'] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() => {
    'placePrediction': placePrediction?.toJson(),
  };
}
