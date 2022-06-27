import 'package:flutter/material.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: OrdersView,
        onPageBuildre: (context, widget) => scaffold(context));
  }

  Scaffold scaffold(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              AppBarWidget(
                leading: InkWell(
                    child: IconConst.leftButton,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                center: const Text(
                  "Edit Profile",
                  style: FStyles.headline4b,
                ),
              ),
            ],
          ),
        ),
      );
}
