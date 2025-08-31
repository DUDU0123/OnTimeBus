import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/components/common_text_style.dart';
import 'package:evide_bus_stop_app/model/bus_stops_model.dart';

class StopListTile extends StatelessWidget {
  const StopListTile({super.key, required this.stop, required this.index});
  final BusStopsModel stop;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      leading: CircleAvatar(
        backgroundColor: AppColors.kPrimaryAppColor,
        child: Text(
          '${index + 1}',
          style: commonTextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      title: Text(
        stop.stopName ?? '',
        style: commonTextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, ),
      ),
      subtitle: Text(
        'Tap to see details',
        style: commonTextStyle(fontSize: 14.sp, color: Colors.grey[600]),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 18.sp,
        color: Colors.grey[400],
      ),
    );
  }
}
