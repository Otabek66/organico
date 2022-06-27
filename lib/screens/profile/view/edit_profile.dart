import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/components/form_filed_decoration.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/screens/authentication/cubit/auth_cubit.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

class ProfileEditView extends StatelessWidget {
  const ProfileEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: ProfileEditView,
        onPageBuildre: (context, widget) => scaffold(context));
  }

  Scaffold scaffold(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              AppBarWidget(
                leading: InkWell(
                    child: IconConst.leftButton,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                center: const Text(
                  "Edit Profile",
                  style: FStyles.headline4b,
                ),
              ),
              sizedBox(48, context),
              SizedBox(
                height: context.h * 171,
                width: context.h * 171,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: context.w * 85.5,
                      foregroundImage:
                          AssetImage("assets/profile/images/avatar.png"),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child:
                          SvgPicture.asset("assets/profile/icons/camera.svg"),
                    ),
                  ],
                ),
              ),
              sizedBox(32, context),
              SizedBox(
                width: context.width,
                height: context.h * 500,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.w * 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Name", style: FStyles.headline5b),
                        TextFormField(
                          decoration: FormFiledDecor.decor("Your name"),
                        ),
                        sizedBox(16, context),
                        const Text("Phone", style: FStyles.headline5b),
                        sizedBox(10, context),
                        TextFormField(
                          decoration: FormFiledDecor.decor(context
                              .watch<AuthCubit>()
                              .phoneNumberController
                              .text),
                        ),
                        sizedBox(16, context),
                        const Text("Address", style: FStyles.headline5b),
                        sizedBox(10, context),
                        Container(
                          width: context.width,
                          height: context.h * 127,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            
                            border: Border.all(width: 1.5,color: ColorConst.kcontainerBorder,),
                          
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: context.w * 10,left: context.w * 16,right: context.w * 16),
                            child: Text("3517 W. Gray St. Utica Pennsylvania \n57867", style: FStyles.headline5textBlack,),
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      );
  SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.w * size,
      );
}
