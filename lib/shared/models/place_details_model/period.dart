import 'close.dart';
import 'open.dart';

class Period {
  Open? open;
  Close? close;

  Period({this.open, this.close});

  factory Period.fromJson(Map<String, dynamic> json) => Period(
    open: json['open'] == null
        ? null
        : Open.fromJson(json['open'] as Map<String, dynamic>),
    close: json['close'] == null
        ? null
        : Close.fromJson(json['close'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'open': open?.toJson(),
    'close': close?.toJson(),
  };
}
