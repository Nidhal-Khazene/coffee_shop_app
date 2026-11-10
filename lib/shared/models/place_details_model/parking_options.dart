class ParkingOptions {
  bool? freeParkingLot;
  bool? paidParkingLot;

  ParkingOptions({this.freeParkingLot, this.paidParkingLot});

  factory ParkingOptions.fromJson(Map<String, dynamic> json) {
    return ParkingOptions(
      freeParkingLot: json['freeParkingLot'] as bool?,
      paidParkingLot: json['paidParkingLot'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
    'freeParkingLot': freeParkingLot,
    'paidParkingLot': paidParkingLot,
  };
}
