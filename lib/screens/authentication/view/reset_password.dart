import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/components/form_filed_decoration.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';
import 'package:organico/widgets/button_widget/elevated_button_widget.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: ResetPasswordView,
        onPageBuildre: (context, widget) => scaffold(context));
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: IconConst.leftButton,
              center: const Text(
                "Reset Password",
                style: FStyles.headline4b,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBox(48, context),
                  const Text(
                    "Please fill in the field below to reset your current password.",
                    style: FStyles.headline5,
                  ),
                  sizedBox(48, context),
                  const Text(
                    "New Password",
                    style: FStyles.headline5s,
                  ),
                  sizedBox(10, context),
                  TextFormField(
                    decoration: FormFiledDecor.decor(
                      "New Password",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                  sizedBox(16, context),
                  const Text(
                    "New Password Confirmation",
                    style: FStyles.headline5s,
                  ),
                  sizedBox(10, context),
                  TextFormField(
                    decoration: FormFiledDecor.decor(
                      "New Password Confirmation",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                ],
              ),
            ),
            sizedBox(48, context),
            ElevatedButtonWidget(
                onPressed: () {
                  NavigationService.instance.pushNamed("/main");
                },
                text: "Reset Password"),
          ],
        ),
      ),
    );
  }

  SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.h * size,
      );
}
