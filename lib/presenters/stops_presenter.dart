import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/model/bus_stops_model.dart';
import 'package:evide_bus_stop_app/repositories/stops_repo.dart';
import 'package:evide_bus_stop_app/services/shared_prefs_services.dart';

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

  RxList<BusStopsModel> filteredTirurToKuttiPuram = <BusStopsModel>[].obs;
  RxList<BusStopsModel> filteredTirurToKottakal = <BusStopsModel>[].obs;
  RxList<BusStopsModel> filteredKottakalToTirur = <BusStopsModel>[].obs;

  Future<void> loadAllStopsTirurToKuttiPuram() async {
    try {
      final stopsList = await stopsRepo.loadAllTirurToKuttippuramStops();
      final favouriteStops = await FavoritesManager.loadFavorites();
      for (var stop in stopsList) {
        if (favouriteStops.contains(stop.stopName)) {
          stop.isFavorite = true;
        }
      }
      tirurToKuttiPuramStopsList = stopsList;
      filteredTirurToKuttiPuram.value = stopsList;
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
      final favouriteStops = await FavoritesManager.loadFavorites();
      for (var stop in stopsList) {
        if (favouriteStops.contains(stop.stopName)) {
          stop.isFavorite = true;
        }
      }
      tirurToKottakalStopsList = stopsList;
      filteredTirurToKottakal.value = stopsList;
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
      final favouriteStops = await FavoritesManager.loadFavorites();
      for (var stop in stopsList) {
        if (favouriteStops.contains(stop.stopName)) {
          stop.isFavorite = true;
        }
      }
      kottakalToTirurStopsList = stopsList;
      filteredKottakalToTirur.value = stopsList;
      update();
    } catch (e) {
      GetSnackBar(
        message: e.toString(),
        duration: Duration(seconds: 3),
      );
    }
  }

  void filterStops(String query) {
    filteredTirurToKuttiPuram.value = tirurToKuttiPuramStopsList
        .where((stop) => (stop.stopName?.toLowerCase().contains(query.toLowerCase())) ?? false)
        .toList();

    filteredTirurToKottakal.value = tirurToKottakalStopsList
        .where((stop) => stop.stopName?.toLowerCase().contains(query.toLowerCase()) ?? false)
        .toList();

    filteredKottakalToTirur.value = kottakalToTirurStopsList
        .where((stop) => stop.stopName?.toLowerCase().contains(query.toLowerCase()) ?? false)
        .toList();
  }
}