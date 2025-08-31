import 'package:evide_bus_stop_app/app_utils/app_common_imports.dart';

TextStyle commonTextStyle({
  double? fontSize,
  double? height,
  FontWeight? fontWeight,
  String? fontFamily,
  Color? color,
}) {
  return TextStyle(
    fontSize: fontSize ?? 20.sp,
    fontWeight: fontWeight,
    fontFamily: fontFamily ?? AppAssets.poppins,
    height: height,
    color: color,
  );
}