import 'package:shared_preferences/shared_preferences.dart';

const String kDontShowAgainKey = 'dontShowAgain';

class WelcomeDataSource {
  final SharedPreferences sharedPreferences;

  WelcomeDataSource({required this.sharedPreferences});

  registerDontShowAgain({required bool value}) async {
    await sharedPreferences.setBool(kDontShowAgainKey, value);
  }

  bool getDontShowAgain() {
    return sharedPreferences.getBool(kDontShowAgainKey) ?? false;
  }
}
