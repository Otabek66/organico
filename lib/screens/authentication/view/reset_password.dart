import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModal: ResetPasswordView, onPageBuildre: (context,widget)=> scaffold());
  }

  Scaffold scaffold() {
    return Scaffold();}
}