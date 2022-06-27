import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/screens/home/cubit/home_cubit.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';
import 'package:organico/widgets/button_widget/elevated_button_widget.dart';

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
                  "My Orders",
                  style: FStyles.headline4b,
                ),
              ),
            sizedBox(45, context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 20),
              child: Column(
                children: [
                sizedBox(116, context),
                SvgPicture.asset("assets/profile/images/empty_orders.svg"),
                sizedBox(32, context),
                Text("There is no ongoing order right now. You can order from home.",style: FStyles.headline4b,textAlign: TextAlign.center,),
                sizedBox(32, context),
                ElevatedButtonWidget(onPressed: (){}, text: "Go home"),
              
              ],
              
              ),
            )
            ],

          ),
        ),
      );
      SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.w * size,
      );
}
