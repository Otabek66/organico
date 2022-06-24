import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/components/form_filed_decoration.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/screens/authentication/cubit/auth_cubit.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';
import 'package:organico/widgets/button_widget/elevated_button_widget.dart';

class NewRegistrationView extends StatelessWidget {
  const NewRegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: NewRegistrationView,
        onPageBuildre: (context, widget) => scaffold(context));
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: SvgPicture.asset('assets/auth/icons/left_button.svg'),
              center: const Text(
                "New Registratoion",
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
                    "It looks like you don’t have an account on this number. Please let us know some information for a secure service.",
                    style: FStyles.headline5,
                  ),
                  sizedBox(48, context),
                  const Text(
                    "Full Name",
                    style: FStyles.headline5s,
                  ),
                  sizedBox(10, context),
                  TextFormField(
                    decoration: FormFiledDecor.decor(
                      "Full Name",
                    ),
                  ),
                  sizedBox(16, context),
                  const Text(
                    "Password",
                    style: FStyles.headline5s,
                  ),
                  sizedBox(10, context),
                  TextFormField(
                    decoration: FormFiledDecor.decor(
                      "Password",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                  sizedBox(16, context),
                  const Text(
                    "Password Confirmation",
                    style: FStyles.headline5s,
                  ),
                  sizedBox(10, context),
                  TextFormField(
                    decoration: FormFiledDecor.decor(
                      "Password Confirmation",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                  sizedBox(24, context),
                ],
              ),
            ),
            SizedBox(
              
              width: context.w * 392,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: context.watch<AuthCubit>().isCheked,
                    onChanged: (value) {
                      context.read<AuthCubit>().isChekedfunc();
                    },
                    side: BorderSide(width: 1.5),
                  ),
                  Text(
                    'I accepted the ',
                    style: FStyles.headline5priblack,
                  ),
                  Text(
                    'Terms of Use ',
                    style: FStyles.headline5prigreen,
                  ),
                  Text(
                    'and ',
                    style: FStyles.headline5priblack,
                  ),
                  Text(
                    'Privacy Policy',
                    style: FStyles.headline5prigreen,
                  ),
                ],
              ),
            ),
            sizedBox(49, context),
            Column(
              children: [
                ElevatedButtonWidget(onPressed: (){
                  NavigationService.instance.pushNamed("/forgetPassword");
                }, text: "Sign Up"),
            sizedBox(24, context),
            Text('or use'),
            sizedBox(24, context),
                ElevatedButtonWidget(onPressed: (){}, text: "Sign Up with Google",color: Colors.white,textColor: ColorConst.ktextBlack1,)
              ],
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
