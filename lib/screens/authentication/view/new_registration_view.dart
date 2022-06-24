import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/components/form_filed_decoration.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

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
                  const Text("Full Name",style: FStyles.headline5s,),
                  sizedBox(10, context),
                  TextFormField(
                    decoration:FormFiledDecor.decor("Full Name",),
                  )
                ],
              ),
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
