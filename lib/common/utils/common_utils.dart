import 'package:flutter/material.dart';
import 'package:my_app/common/style/string_base.dart';
import 'package:my_app/common/localization/default_localizations.dart';

class CommonUtils {
  static APPStringBase getLocale(BuildContext context) {
    return APPLocalizations.of(context).currentLocalized;
  }
  // static showLanguageDialog(BuildContext context){
  //   List<String> list = [
  //     CommonUtils.getLocal(context).home_language_default,
  //     CommonUtils.getLocal(context).home_language_zh,
  //     CommonUtils.getLocal(context).home_language_en,
  //   ];
  // }
//
}
