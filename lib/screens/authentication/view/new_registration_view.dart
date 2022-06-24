import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

class NewRegistrationView extends StatelessWidget {
  const NewRegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: NewRegistrationView,
        onPageBuildre: (context, widget) => scaffold());
  }

  Scaffold scaffold() {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: SvgPicture.asset('assets/auth/icons/left_button.svg'),
              center :const Text("New Registratoion",style: FStyles.headline4b,),
            ),
           
          ],
        ),
      ),
    );
  }
}
