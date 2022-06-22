import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';

class NewRegistrationView extends StatelessWidget {
  const NewRegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModal: NewRegistrationView, onPageBuildre: (context,widget)=> scaffold());
  }

  Scaffold scaffold() {
    return Scaffold();}
}