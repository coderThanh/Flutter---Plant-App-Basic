// This file will contain all function off app

class AppFunc {
  static double getHeightByRatio({required width, ratio = 56.2}) {
    double result = width * ratio / 100;
    return result;
  }
}
