import 'package:flutter/material.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/core/constants/fonts/font_size_const.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/extension/context_extension.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  final double width;
  final Color textColor;
  const ElevatedButtonWidget(
      {this.color = ColorConst.kelevatedButton,
      this.width = 374,
      required this.onPressed,
      required this.text,
      this.textColor = ColorConst.kelevatedButtonTWhite,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
       primary: color,
       fixedSize: Size(context.w * width , context.h * 52),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
      ),
     child: Text(text,style: TextStyle(color:textColor,fontSize: FSize.ksmall,),),
     onPressed: onPressed,
   );
  }}