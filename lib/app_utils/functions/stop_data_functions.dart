import 'package:flutter/foundation.dart';

class StopDataFunctions {
  static String  getEta({required int timedifference}) {
    try {
      return DateTime.now()
        .add(Duration(minutes: timedifference))
        .toLocal()
        .toString()
        .substring(11, 16);
    } catch (e) {
      debugPrint(e.toString());
      return 'No time';
    }
  }
}