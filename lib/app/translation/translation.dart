import 'package:get/get.dart';
import 'package:online_shop/app/translation/ar.dart';
import 'package:online_shop/app/translation/en.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': enKeys,
        'ar': arKeys,
      };
}
