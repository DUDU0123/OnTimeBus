class BusStopsModel {
  final String? stopName;
  final double? latitude;
  final double? longitude;
  final int? timedifference;
  final String? stopTime;
  BusStopsModel({
    this.stopName,
    this.latitude,
    this.longitude,
    this.timedifference,
    this.stopTime
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
}
