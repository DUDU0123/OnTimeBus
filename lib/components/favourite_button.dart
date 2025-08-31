import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/model/bus_stops_model.dart';
import 'package:evide_bus_stop_app/presenters/favourite_presenter.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.favController,
    required this.stop,
  });

  final FavouritePresenter favController;
  final BusStopsModel stop;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        favController.addFavorite(stop.stopName ?? '');
      },
      child: CircleAvatar(
        backgroundColor: AppColors.kPrimaryAppColor.withOpacity(0.1),
        child: Obx(() {
          bool isFav = favController.favoriteStops.contains(
            stop.stopName,
          );
          return Icon(
            isFav ? Icons.favorite : Icons.favorite_border,
            color: isFav ? AppColors.kRed : AppColors.kGrey,
            size: 16.sp,
          );
        }),
      ),
    );
  }
}