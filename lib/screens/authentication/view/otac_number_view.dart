import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

class OtacView extends StatelessWidget {
  const OtacView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModal: OtacView, onPageBuildre: (context,widget)=> scaffold(context));
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
       AppBarWidget(
              leading: IconConst.leftButton,
              center: const Text(
                "New Registratoion",
                style: FStyles.headline4b,
              ),
            ), 
      ],)),
    );
    }
}