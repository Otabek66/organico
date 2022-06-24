import 'package:flutter/material.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_size_const.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';
import 'package:organico/widgets/button_widget/elevated_button_widget.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: ForgetPasswordView,
      onPageBuildre: (context, widget) => scaffold(context),
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: IconConst.leftButton,
              center: const Text(
                "New Registratoion",
                style: FStyles.headline4b,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 20),
              child: SizedBox(
                width: context.width,
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    sizedBox(46, context),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: context.w * 14),
                      child: SizedBox(
                        width: context.w * 349,
                        height: context.h * 345,
                        child: Image.asset('assets/auth/images/forgot.png'),
                      ),
                    ),
                    sizedBox(70.25, context),
                    const Text(
                      "Enter your phone number",
                      style: FStyles.headline3s,
                    ),
                    sizedBox(16.0, context),
                    const Text(
                      'We need to verify you. We will send you a one-time authorization code. ',
                      style: FStyles.headline5,
                    ),
                    sizedBox(32, context),
                    TextFormField(
                      // controller: controller,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 13),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      validator: (v) {},
                    ),
                    sizedBox(79, context),
                    ElevatedButtonWidget(
                      onPressed: () {
                        NavigationService.instance.pushNamed("/newRegistr");
                      },
                      text: "SignIn",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.h * size,
      );
}
