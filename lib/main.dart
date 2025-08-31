import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/root_widget_page.dart';
import 'package:evide_bus_stop_app/services/init_controllers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initControllers();
  runApp(RootWidgetPage());
}