import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/model/bus_stops_model.dart';
import 'package:evide_bus_stop_app/components/common_appbar.dart';
import 'package:evide_bus_stop_app/view/stop_detail_screen/widget/stop_detail_body.dart';

class StopDetailScreen extends StatelessWidget {
  const StopDetailScreen({
    super.key,
    required this.stop,
    required this.stopTitle,
  });

  final BusStopsModel stop;
  final String stopTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        title: stopTitle,
        fontSize: 18.sp,
        height: 30,
        width: 30,
        onTap: () {
          AppKeys.navigatorKey?.currentState?.pop();
        },
      ),
      body: StopDetailBody(stop: stop),
    );
  }
}

