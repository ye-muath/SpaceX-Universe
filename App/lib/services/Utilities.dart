import 'package:url_launcher/url_launcher.dart';

class Utilities {
  static String boolToString(bool value) {
    return value ? "Yes" : "No";
  }

  static void launchUrl(String url) async {
    if (null == url || url.isEmpty) {
      return;
    }
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
