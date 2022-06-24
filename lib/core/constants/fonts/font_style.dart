
import 'package:flutter/material.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/core/constants/fonts/font_size_const.dart';

class FStyles {
  static const TextStyle headline1 = TextStyle(fontSize: FSize.khuge,fontWeight: FontWeight.w600);
  static const TextStyle headline2 = TextStyle(fontSize: FSize.kextraLarge);
  static const TextStyle headline3 = TextStyle(fontSize: FSize.klarge);
  static const TextStyle headline3s = TextStyle(fontSize: FSize.klarge,fontWeight: FontWeight.w700);
  static const TextStyle headline4 = TextStyle(fontSize: FSize.kmedium);
  static const TextStyle headline4b = TextStyle(fontSize: FSize.kmedium, fontWeight: FontWeight.w700);
  static const TextStyle headline5 = TextStyle(fontSize: FSize.ksmall);
  static const TextStyle headline5b = TextStyle(fontSize: FSize.ksmall,color: Colors.grey);
  static  TextStyle headline5feb = TextStyle(fontSize: FSize.ksmall,color: ColorConst.kelevatedButtonTWhite);
  static const TextStyle headline6 = TextStyle(fontSize: FSize.kextraSmall);

}