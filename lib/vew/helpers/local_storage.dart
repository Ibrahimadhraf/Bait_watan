

import 'package:get_storage/get_storage.dart';

class LocalStorage{
  //write
  void saveLanguage(String lang)async{
    await GetStorage().write('lang', lang);
  }
  //read
Future<String> get languageSelected async{
    return await GetStorage().read('lang');

}
}