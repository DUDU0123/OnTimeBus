import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';

class RootWidgetPage extends StatelessWidget {
  const RootWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: AppKeys.navigatorKey,
          debugShowCheckedModeBanner: false,
          home: Scaffold(body: Center(child: Text("Hello World"))),
        );
      },
    );
  }
}
