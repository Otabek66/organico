import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModal: SignInView, onPageBuildre: (context,widget)=> scaffold());
  }

  Scaffold scaffold() {
    return Scaffold();
    }
}