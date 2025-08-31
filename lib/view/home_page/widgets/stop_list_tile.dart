import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/components/common_text_style.dart';
import 'package:evide_bus_stop_app/components/favourite_button.dart';
import 'package:evide_bus_stop_app/model/bus_stops_model.dart';
import 'package:evide_bus_stop_app/presenters/favourite_presenter.dart';

class StopListTile extends StatelessWidget {
  StopListTile({super.key, required this.stop, required this.index});
  final BusStopsModel stop;
  final int index;

  final favController = Get.find<FavouritePresenter>();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      leading: FavoriteButton(favController: favController, stop: stop),
      title: Text(
        stop.stopName?.toUpperCase() ?? '',
        style: commonTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, ),
      ),
      subtitle: Text(
        'Tap to see details',
        style: commonTextStyle(fontSize: 12.sp, color: Colors.grey[600]),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 18.sp,
        color: Colors.grey[400],
      ),
    );
  }
}
