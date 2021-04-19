
import 'package:get/get.dart';

import 'app_language/ar.dart';
import 'app_language/en.dart';


class Translation extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    'en':en ,
    'ar':ar
  };

}