import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';

class OtacView extends StatelessWidget {
  const OtacView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModal: OtacView, onPageBuildre: (context,widget)=> scaffold());
  }

  Scaffold scaffold() {
    return Scaffold();}
}