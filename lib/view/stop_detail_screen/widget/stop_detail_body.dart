import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/app_utils/functions/stop_data_functions.dart';
import 'package:evide_bus_stop_app/components/common_text_style.dart';
import 'package:evide_bus_stop_app/components/favourite_button.dart';
import 'package:evide_bus_stop_app/model/bus_stops_model.dart';
import 'package:evide_bus_stop_app/presenters/favourite_presenter.dart';

class StopDetailBody extends StatelessWidget {
  StopDetailBody({super.key, required this.stop});
  final favController = Get.find<FavouritePresenter>();

  final BusStopsModel stop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.r),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stop Name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  stop.stopName?.toUpperCase() ?? 'Unknown Stop',
                  style: commonTextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kPrimaryAppColor,
                    fontFamily: AppAssets.russoOne,
                  ),
                ),
                FavoriteButton(favController: favController, stop: stop),
              ],
            ),
            AppConstraints.kHeight8,
            // Coordinates
            Row(
              children: [
                Icon(Icons.location_on, color: AppColors.kRed),
                SizedBox(width: 8.w),
                Text(
                  'Latitude: ${stop.latitude?.toStringAsFixed(5) ?? 'N/A'}',
        
                  style: commonTextStyle(fontSize: 18.sp),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined, color: AppColors.kRed),
                SizedBox(width: 8.w),
                Text(
                  'Longitude: ${stop.longitude?.toStringAsFixed(5) ?? 'N/A'}',
                  style: commonTextStyle(fontSize: 18.sp),
                ),
              ],
            ),
            AppConstraints.kHeight12,
            // ETA
            Row(
              children: [
                Icon(Icons.access_time, color: AppColors.kOrange),
                SizedBox(width: 8.w),
                Text(
                  'Next bus ETA: ${StopDataFunctions.getEta(timedifference: stop.timedifference ?? 0)}',
                  style: commonTextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            AppConstraints.kHeight16,
            // Stop Descriptionn
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.r),
                child: Text(
                  '''${stop.stopName ?? 'This stop'} is conveniently located and accessible for commuters.
        It lies at latitude ${stop.latitude?.toStringAsFixed(5) ?? 'N/A'} and longitude ${stop.longitude?.toStringAsFixed(5) ?? 'N/A'}.
        The next bus is expected to arrive in ${StopDataFunctions.getEta(timedifference: stop.timedifference ?? 0)}.
        
        Facilities around the stop may include seating, shelters, and nearby shops for commuter convenience.
        Stay updated with live ETAs to plan your journey efficiently.''',
                  // style: TextStyle(
                  //   fontSize: 16.sp,
                  //   height: 1.5,
                  //   fontFamily: AppAssets.poppins,
                  // ),
                  style: commonTextStyle(fontSize: 16.sp, height: 1.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


