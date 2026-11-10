class PostalAddress {
  String? regionCode;
  String? languageCode;
  String? postalCode;
  String? administrativeArea;
  String? locality;
  List<String>? addressLines;

  PostalAddress({
    this.regionCode,
    this.languageCode,
    this.postalCode,
    this.administrativeArea,
    this.locality,
    this.addressLines,
  });

  factory PostalAddress.fromJson(Map<String, dynamic> json) => PostalAddress(
    regionCode: json['regionCode'] as String?,
    languageCode: json['languageCode'] as String?,
    postalCode: json['postalCode'] as String?,
    administrativeArea: json['administrativeArea'] as String?,
    locality: json['locality'] as String?,
    addressLines: (json['addressLines'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'regionCode': regionCode,
    'languageCode': languageCode,
    'postalCode': postalCode,
    'administrativeArea': administrativeArea,
    'locality': locality,
    'addressLines': addressLines,
  };
}
