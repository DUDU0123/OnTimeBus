import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/services/shared_prefs_services.dart';

class FavouritePresenter extends GetxController{
  @override
  void onInit() {
    super.onInit();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final savedFavorites = await FavoritesManager.loadFavorites();
    favoriteStops.value = savedFavorites;
  }

  RxList<String> favoriteStops = <String>[].obs;

  Future<void> addFavorite(String stopName) async {
    if (!favoriteStops.contains(stopName)) {
      favoriteStops.add(stopName);
      favSnackBar(message: 'Added to favorites');
    }else{
      favoriteStops.remove(stopName);
      favSnackBar(message: 'Removed from favorites');
    }
    await FavoritesManager.saveFavorites(favoriteStops.toList());
  }

  favSnackBar({required String message}){
    Get..closeCurrentSnackbar()..showSnackbar(
        GetSnackBar(
          message: message,
          duration: Duration(seconds: 2),
        ),
      );
  }

}