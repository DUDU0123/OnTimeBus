import 'dart:async';

import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/root_widget_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(
    () {
      return runApp(RootWidgetPage());
    },
    (error, stack) {
      debugPrint("Caught error in my zone $error");
    },
  );
}