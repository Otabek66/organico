import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: ForgetPasswordView,
      onPageBuildre: (context, widget) => scaffold(),
    );
  }

  Scaffold scaffold() {
    return Scaffold();
  }
}
