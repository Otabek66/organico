import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/components/form_filed_decoration.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/screens/authentication/cubit/auth_cubit.dart';
import 'package:organico/screens/profile/cubit/profile_cubit.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

class AddPaymentView extends StatelessWidget {
  const AddPaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: AddPaymentView,
        onPageBuildre: (context, widget) => scaffold(
              context,
            ));
  }

  Scaffold scaffold(
    BuildContext context,
  ) {
    dynamic groupV = "2";
    var dataFunction = context.read<ProfileCubit>();
    return Scaffold(
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
                "Add Payment Metod",
                style: FStyles.headline4b,
              ),
            ),
            sizedBox(28, context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Select Metod',
                      style: FStyles.headline4b,
                    ),
                    sizedBox(29, context),
                    Row(
                      children: [
                        Expanded(
                            child: RadioListTile(
                                title: Text("Credit Card",
                                    style: FStyles.headline5priblack),
                                value: "1",
                                groupValue: dataFunction.groupValue,
                                onChanged: (v) {
                                  dataFunction.changeRbutton(v);
                                })),
                        Expanded(
                            child: RadioListTile(
                                title: Text("PayPal",
                                    style: FStyles.headline5priblack),
                                value: "2",
                                groupValue: dataFunction.groupValue,
                                onChanged: (v) {
                                  dataFunction.changeRbutton(v);
                                })),
                      ],
                    ),
                    sizedBox(28, context),
                    const Text(
                      'Details Metod',
                      style: FStyles.headline4b,
                    ),
                    sizedBox(28, context),
                    const Text("Name", style: FStyles.headline5b),
                    sizedBox(10, context),
                    TextFormField(
                      decoration: FormFiledDecor.decor("Name"),
                    ),
                    sizedBox(16, context),
                    const Text("Credit Card Number", style: FStyles.headline5b),
                    sizedBox(10, context),
                    TextFormField(
                      decoration: FormFiledDecor.decor('Credit Card Number'),
                    ),
                    sizedBox(16, context),
                    Row(children: [
                      SizedBox()
                    ],)
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.w * size,
      );
}
