import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/core/extension/context_extension.dart';

class AppBarWidget extends StatelessWidget {
  final Widget leading;
  final Widget center;
  final Widget trailing;
  const AppBarWidget(
      {this.trailing = const SizedBox(),
      this.center = const SizedBox(),
      required this.leading,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h * 65,
      width: context.width,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w * 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(children: [
                  leading,
                  SizedBox(
                    width: context.w * 24,
                  ),
                  center,
                ]),
              ),
              trailing,
            ],
          ),
        ),
      ),
    );
  }
}
