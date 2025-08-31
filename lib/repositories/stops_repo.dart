import 'dart:convert';

import 'package:evide_bus_stop_app/model/bus_stops_model.dart';
import 'package:flutter/services.dart';

class StopsRepo {
  // fetching data from local json file (TirurToKuttippuram)
  Future<List<BusStopsModel>> loadAllTirurToKuttippuramStops() async {
    try {
      final String response = await rootBundle.loadString('assets/mock/stops.json');
      final data = json.decode(response);
      final List<dynamic> tirurToKuttippuramJson = data["tirurToKuttippuram"];
      return tirurToKuttippuramJson.map((e) {
        return BusStopsModel.fromJson(e);
      },).toList();
    } catch (e) {
      throw Exception('Failed to load bus stops: $e');
    }
  }
  // fetching data from local json file (KottakkalToTirur)
  Future<List<BusStopsModel>> loadAllKottakkalToTirurStops() async {
    try {
      final String response = await rootBundle.loadString('assets/mock/stops.json');
      final data = json.decode(response);
      final List<dynamic> tirurToKuttippuramJson = data["KottakkalToTirur"];
      return tirurToKuttippuramJson.map((e) {
        return BusStopsModel.fromJson(e);
      },).toList();
    } catch (e) {
      throw Exception('Failed to load bus stops: $e');
    }
  }
  // fetching data from local json file (TirurToKottakkal)
  Future<List<BusStopsModel>> loadAllTirurToKottakkalStops() async {
    try {
      final String response = await rootBundle.loadString('assets/mock/stops.json');
      final data = json.decode(response);
      final List<dynamic> tirurToKuttippuramJson = data["tirurToKottakkal"];
      return tirurToKuttippuramJson.map((e) {
        return BusStopsModel.fromJson(e);
      },).toList();
    } catch (e) {
      throw Exception('Failed to load bus stops: $e');
    }
  }
}