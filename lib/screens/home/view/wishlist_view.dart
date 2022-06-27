import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/screens/home/cubit/home_cubit.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      context.watch<HomeCubit>().info[0].vegetables.image,
      context.watch<HomeCubit>().info[0].fruits.image,
      "Paprika",
      "Banana"
    ];

    return BaseView(
        viewModal: WishlistView,
        onPageBuildre: (context, widget) => scaffold(context, images));
  }

  Scaffold scaffold(BuildContext context, List<String> image) => Scaffold(
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
                  "My Wishlist",
                  style: FStyles.headline4b,
                ),
              ),
              SizedBox(
                width: 400,
                height: 500,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 190),
                  itemBuilder: (ctx, ind) {
                    return Container(
                      decoration: BoxDecoration(
                        color: context.watch<HomeCubit>().color[ind],
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: EdgeInsets.all(context.w * 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: context.h * 80,
                                width: context.width,
                                child: Stack(children: [
                                  Image.asset(image[ind]),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: IconConst.heart,
                                  ),

                                ],
                                ),
                              ),
                              sizedBox(20, context),
                              SizedBox(width: context.w*148,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(image[ind+2],style: FStyles.headline5wish,
                                  ),
                                  sizedBox(4, context),
                                  Text("1 kilogram", style: FStyles.headline6grey,)
                              ]),
                              )
                            ]),
                      ),
                    );
                  },
                  itemCount: 2,
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
