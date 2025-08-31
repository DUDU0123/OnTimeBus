import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/model/bus_stops_model.dart';
import 'package:evide_bus_stop_app/repositories/stops_repo.dart';

class StopsPresenter extends GetxController{
  StopsRepo stopsRepo = StopsRepo();
  @override
  void onInit() {
    loadAllStopsTirurToKuttiPuram();
    loadAllStopsTirurToKottakkal();
    loadAllStopsKottakkalToTirur();
    super.onInit();
  }

  List<BusStopsModel> tirurToKuttiPuramStopsList = [];
  List<BusStopsModel> tirurToKottakalStopsList = [];
  List<BusStopsModel> kottakalToTirurStopsList = [];

  Future<void> loadAllStopsTirurToKuttiPuram() async {
    try {
      final stopsList = await stopsRepo.loadAllTirurToKuttippuramStops();
      tirurToKuttiPuramStopsList = stopsList;
      update();
    } catch (e) {
      GetSnackBar(
        message: e.toString(),
        duration: Duration(seconds: 3),
      );
    }
  }
  Future<void> loadAllStopsTirurToKottakkal() async {
    try {
      final stopsList = await stopsRepo.loadAllTirurToKottakkalStops();
      tirurToKottakalStopsList = stopsList;
      update();
    } catch (e) {
      GetSnackBar(
        message: e.toString(),
        duration: Duration(seconds: 3),
      );
    }
  }
  Future<void> loadAllStopsKottakkalToTirur() async {
    try {
      final stopsList = await stopsRepo.loadAllKottakkalToTirurStops();
      kottakalToTirurStopsList = stopsList;
      update();
    } catch (e) {
      GetSnackBar(
        message: e.toString(),
        duration: Duration(seconds: 3),
      );
    }
  }
}