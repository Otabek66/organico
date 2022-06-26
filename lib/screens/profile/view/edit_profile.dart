import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';

class ProfileEditView extends StatelessWidget {
  const ProfileEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModal: ProfileEditView, onPageBuildre: (context,widget)=>scaffold(context));
  }

  Scaffold scaffold(BuildContext context) => Scaffold();
}