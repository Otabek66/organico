import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/components/form_filed_decoration.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/screens/authentication/cubit/auth_cubit.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';
import 'package:organico/widgets/button_widget/elevated_button_widget.dart';

class OtacView extends StatelessWidget {
  const OtacView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: OtacView,
        onPageBuildre: (context, widget) => scaffold(context));
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: InkWell(
                child: IconConst.leftButton,
                onTap: () {
                  NavigationService.instance.pop("/forgotPassword");
                },
              ),
              center: const Text(
                "OTAC Number",
                style: FStyles.headline4b,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 20),
              child: Column(children: [
                sizedBox(48, context),
                const Text(
                  "Enter Authorization Code",
                  style: FStyles.headline3s,
                ),
                sizedBox(16, context),
                const Text(
                  'We have sent SMS to:',
                  style: FStyles.headline5,
                ),
                Text(
                  context.watch<AuthCubit>().phoneNumberController.text,
                  style: FStyles.headline3s,
                ),
                sizedBox(40, context),
                TextFormField(
                  decoration: FormFiledDecor.decor("6 digit code"),
                ),
                sizedBox(24, context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Resent Code ',
                      style: FStyles.headline5prigreen,
                    ),
                  ],
                ),
                sizedBox(40, context),
                ElevatedButtonWidget(onPressed: (){
                  NavigationService.instance.pushNamed("/resetPassword");
                }, text: "Next")
              ]),
            )
          ],
        ),
      ),
    );
  }

  SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.h * size,
      );
}
