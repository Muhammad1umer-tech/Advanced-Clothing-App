import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../Provider/Product.dart';

class Dimensions {
  static double RealHeight = Get.context.height; //683.4285714285714
  static double Realwidth = Get.context.width;

  static double HomePhase1 = RealHeight / 4.55;
  static double NavigatorBarHeight = RealHeight / 17.08;
  static double HomeHeight = 230.0 + NavigatorBarHeight;
}
