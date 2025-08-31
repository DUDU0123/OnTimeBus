import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/services/shared_prefs_services.dart';

class FavouritePresenter extends GetxController{

  RxList<String> favoriteStops = <String>[].obs;

  void addFavorite(String stopName) {
    if (!favoriteStops.contains(stopName)) {
      favoriteStops.add(stopName);
      favSnackBar(message: 'Added to favorites');
      FavoritesManager.saveFavorites(favoriteStops);
    }else{
      favoriteStops.remove(stopName);
      favSnackBar(message: 'Removed from favorites');
      FavoritesManager.saveFavorites(favoriteStops);
    }
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