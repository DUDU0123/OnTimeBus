import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/presenters/stops_presenter.dart';
import 'package:evide_bus_stop_app/view/home_page/widgets/build_bus_stops_list.dart';
import 'package:evide_bus_stop_app/components/common_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final StopsPresenter stopsPresenter = Get.find<StopsPresenter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search stops...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              onChanged: (value) {
                stopsPresenter.filterStops(value);
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BuildBusStopsList(
                    listTitle: "Tirur To Kuttippuram",
                    stopsList: stopsPresenter.filteredTirurToKuttiPuram,
                  ),
                  BuildBusStopsList(
                    listTitle: "Kottakal To Tirur",
                    stopsList: stopsPresenter.filteredKottakalToTirur,
                  ),
                  BuildBusStopsList(
                    listTitle: "Tirur To Kottakal",
                    stopsList: stopsPresenter.filteredTirurToKottakal,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
