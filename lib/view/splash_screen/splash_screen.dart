import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/app_utils/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(AppAssets.logo),
              ),
            ),
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1500),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: child,
                );
              },
              child: Text(
                "OnTimeBus",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppAssets.russoOne,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
