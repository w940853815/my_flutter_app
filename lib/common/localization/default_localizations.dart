import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_app/common/style/string_en.dart';
import 'package:my_app/common/style/string_zh.dart';
import 'package:my_app/common/style/string_base.dart';

///自定义多语言实现
class APPLocalizations {
  final Locale locale;

  APPLocalizations(this.locale);

  ///根据不同 locale.languageCode 加载不同语言对应
  ///APPStringEn和APPStringZh都继承了APPStringBase
  static Map<String, APPStringBase> _localizedValues = {
    'en': new APPStringEn(),
    'zh': new APPStringZh(),
  };

  APPStringBase get currentLocalized {
    print('*' * 50);
    print(locale.languageCode);
    if (_localizedValues.containsKey(locale.languageCode)) {
      return _localizedValues[locale.languageCode];
    }
    return _localizedValues["zh"];
  }

  ///通过 Localizations 加载当前的 APPLocalizations
  ///获取对应的 APPStringBase
  static APPLocalizations of(BuildContext context) {
    print('*' * 50);
    print(Localizations.of(context, APPLocalizations));
    return Localizations.of(context, APPLocalizations);
  }
}
