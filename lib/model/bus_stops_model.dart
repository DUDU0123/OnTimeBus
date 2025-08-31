class BusStopsModel {
  final String? stopName;
  final double? latitude;
  final double? longitude;
  final int? timedifference;
  final String? stopTime;
  bool isFavorite;
  BusStopsModel({
    this.stopName,
    this.latitude,
    this.longitude,
    this.timedifference,
    this.stopTime,
    this.isFavorite = false,
  });

  factory BusStopsModel.fromJson(Map<String, dynamic> json) {
    return BusStopsModel(
      stopName: json['stopname'] ?? '',
      latitude: json['latitude']?.toDouble() ?? 0.0,
      longitude: json['longitude']?.toDouble() ?? 0.0,
      timedifference: json['timedifference'] ?? 0,
      stopTime: json['stopTime'] ?? ''
    );
  }

   Map<String, dynamic> toJson() => {
        'stopname': stopName,
        'latitude': latitude,
        'longitude': longitude,
        'timedifference': timedifference,
        'stopTime': stopTime,
      };
}
