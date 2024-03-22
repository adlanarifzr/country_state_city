import './timezone.dart';

/// Handle country data such as: (name, isoCode, phoneCode, flag, currency, latitude, longitude, timezones)
class Country {
  final String name;
  final String isoCode;
  final String isoCode3;
  final String phoneCode;
  final String flag;
  final String currency;
  final String latitude;
  final String longitude;
  final List<Timezone>? timezones;

  Country({
    required this.name,
    required this.isoCode,
    required this.isoCode3,
    required this.phoneCode,
    required this.flag,
    required this.currency,
    required this.latitude,
    required this.longitude,
    this.timezones,
  });

  static Country fromJson(Map<String, dynamic> json) => Country(
        name: json['name'],
        isoCode: json['isoCode'],
        isoCode3: json['isoCode3'],
        phoneCode: json['phoneCode'],
        currency: json['currency'],
        flag: json['flag'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'isoCode': isoCode,
        'isoCode3': isoCode3,
        'phoneCode': phoneCode,
        'currency': currency,
        'flag': flag,
        'latitude': latitude,
        'longitude': longitude,
      };
}
