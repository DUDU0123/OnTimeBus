import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/presenters/stops_presenter.dart';
import 'package:evide_bus_stop_app/view/home_page/widgets/build_bus_stops_list.dart';
import 'package:evide_bus_stop_app/components/common_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildBusStopsList(
              listTitle: "Tirur To Kuttippuram",
              stopsList: Get.find<StopsPresenter>().tirurToKuttiPuramStopsList,
            ),
            BuildBusStopsList(
              listTitle: "Kottakal To Tirur",
              stopsList: Get.find<StopsPresenter>().kottakalToTirurStopsList,
            ),
            BuildBusStopsList(
              listTitle: "Tirur To Kottakal",
              stopsList: Get.find<StopsPresenter>().tirurToKottakalStopsList,
            ),
          ],
        ),
      ),
    );
  }
}
