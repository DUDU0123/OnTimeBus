import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';
import 'package:evide_bus_stop_app/components/app_logo_widget.dart';
import 'package:evide_bus_stop_app/components/common_text_style.dart';

AppBar commonAppBar({
  double? fontSize,
  double? width,
  double? height,
  String? title,
  void Function()? onTap,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: AppLogoWidget(
      width: width ?? 40,
      height: height ?? 40,
      onTap: onTap,
    ),
    title: Text(
      title ?? 'OnTimeBus',
      style: commonTextStyle(fontSize: fontSize, fontFamily: AppAssets.russoOne),
    ),
    centerTitle: false,
  );
}


