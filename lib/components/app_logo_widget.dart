import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key, this.width, this.height, this.onTap,
  });
  final double? width;
  final double? height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 150,
        height: height ?? 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Image.asset(AppAssets.logo),
        ),
      ),
    );
  }
}
