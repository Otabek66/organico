import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModal: ProfileView, onPageBuildre: (context,widget)=>scaffold(context));
  }

  Scaffold scaffold(BuildContext context) => Scaffold(
    body: SafeArea(child: Column(children: [
      AppBarWidget(leading:const Text("Profile",style:  FStyles.headline4b,),
      trailing: IconConst.bell,
      ),
      sizedBox(48,context),
      CircleAvatar(radius: context.w * 85.5,foregroundImage:AssetImage("assets/profile/images/avatar.png"),),
    ],)),
  );

  SizedBox sizedBox(double size,BuildContext context) => SizedBox(height: context.w * size,);
}