import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/constants/padding/padding_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';
import 'package:organico/widgets/button_widget/elevated_button_widget.dart';

class AddressView extends StatelessWidget {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list =[
      "Home",
      "Work",
      "3517 W. Gray St. Utica, Pennsylvania 57867",
      "2715 Ash Dr. San Jose, South Dakota 83475"
    ];
    return BaseView(
        viewModal: AddressView,
        onPageBuildre: (context, widget) => scaffold(context,list));
  }

  Scaffold scaffold(BuildContext context, List<String> info) => Scaffold(
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
                  "My Address ",
                  style: FStyles.headline4b,
                ),
              ),
              sizedBox(8, context),
              Padding(padding: PaddignConst.horizontalPadding,
              child: Column(children: [
                SizedBox(
                  height: context.h * 210,
                  width: context.width,
                  child: ListView.builder(itemBuilder: (ctx,ind){
                  return Container(
                    margin: EdgeInsets.only(bottom: context.w*20),
                    height: context.h * 90,
                    width: context.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: ColorConst.kcontainerBorder
                      ),
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: context.w * 20, vertical: context.w * 20),
                    child: SizedBox(width: context.width, height: context.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(
                        width: context.w * 284,
                        height: context.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(info[ind],style: FStyles.headline5wish),
                          sizedBox(8, context),
                          Text(info[ind+2],style: FStyles.headline6grey,)
                        ]),
                      ),
                    
                      SvgPicture.asset("assets/home/icons/right.svg")
                    ],)
                    ),
                    ),
                  );
                },
                  itemCount: 2,
                ),)
                
              ]),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ElevatedButtonWidget(onPressed: (){}, text: "Add Address"),
      );

      SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.w * size,
      );
}
