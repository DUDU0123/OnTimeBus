import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/presenters/favourite_presenter.dart';
import 'package:evide_bus_stop_app/presenters/stops_presenter.dart';

initControllers(){
  Get.put<StopsPresenter>(StopsPresenter());
  Get.put<FavouritePresenter>(FavouritePresenter());
}