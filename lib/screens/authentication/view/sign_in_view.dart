import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_size_const.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';
import 'package:organico/widgets/button_widget/elevated_button_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: SignInView,
      onPageBuildre: (context, widget) => scaffold(context),
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.w * 20),
        child: SizedBox(
          width: context.width,
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              sizedBox(46, context),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w * 14),
                child: SizedBox(
                  width: context.w * 349,
                  height: context.h * 318.11,
                  child: Image.asset('assets/auth/images/welcome.png'),
                ),
              ),
              sizedBox(65.89, context),
              const Text(
                "Welcome",
                style: FStyles.headline3s,
              ),
              sizedBox(16.0, context),
              const Text(
                'Welcome to Organico Mobile Apps. Please fill in the field below to sign in.',
                style: FStyles.headline5,
              ),
              sizedBox(32, context),
              TextFormField(
                // controller: controller,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                validator: (v) {},
              ),
              sizedBox(20, context),
              TextFormField(
                // controller: passwordController,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset("assets/auth/icons/lock.svg"),
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    size: 22,
                  ),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              sizedBox(24, context),
              Padding(
                padding: EdgeInsets.only(left: context.w * 240),
                child: const Text('Forgot Password', style: TextStyle(color: Color(0xFF2ECC71),fontSize: FSize.ksmall,fontWeight: FontWeight.w700),),
              ),
              sizedBox(44, context),
              ElevatedButtonWidget(onPressed: (){
                NavigationService.instance.pushNamed("/newRegistr");
              }, text: "SignIn", )
            ],
          ),
        ),
      )),
    );
  }

  SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.h * size,
      );
}
