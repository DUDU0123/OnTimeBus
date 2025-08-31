import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/components/common_text_style.dart';
import 'package:evide_bus_stop_app/model/bus_stops_model.dart';
import 'package:evide_bus_stop_app/view/home_page/widgets/stop_list_tile.dart';
import 'package:evide_bus_stop_app/view/stop_detail_screen/stop_detail_screen.dart';

class BuildBusStopsList extends StatelessWidget {
  const BuildBusStopsList({
    super.key,
    required this.listTitle,
    required this.stopsList,
  });
  final String listTitle;
  final List<BusStopsModel> stopsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() {
          if (stopsList.isNotEmpty) {
            return Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                listTitle,
                style: commonTextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppAssets.poppins,
                ),
              ),
            );
          } else {
            return SizedBox.shrink();
          }
        }),
        Obx(() {
          return ListView.builder(
            padding: EdgeInsets.only(
              top: 0.h,
              bottom: 10.h,
              left: 10.w,
              right: 10.w,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: stopsList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  AppKeys.navigatorKey?.currentState?.push(
                    MaterialPageRoute(
                      builder: (context) {
                        return StopDetailScreen(
                          stop: stopsList[index],
                          stopTitle: listTitle,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.kGrey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 3), // shadow position
                      ),
                    ],
                  ),
                  child: StopListTile(stop: stopsList[index], index: index),
                ),
              );
            },
          );
        }),
      ],
    );
  }
}
