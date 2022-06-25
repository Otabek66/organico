import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico/core/constants/colors/color_const.dart';
import 'package:organico/screens/main/cubit/main_cubit.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentPage = context.watch<MainCubit>().currentpage;
    return BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        onTap: (v) => context.read<MainCubit>().pages(v),
        // fixedColor: ColorConst.kPrimaryColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/main/home.svg', color: currentPage == 0 ? ColorConst.knavigationPressed : ColorConst.knavigationUnpressed), label: 'Home',),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/main/explore.svg', color: currentPage == 1 ? ColorConst.knavigationPressed : ColorConst.knavigationUnpressed), label: 'Explore'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/main/cart.svg', color: currentPage == 2 ? ColorConst.knavigationPressed : ColorConst.knavigationUnpressed), label: 'Cart'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/main/profile.svg'), label: 'Profile'),
              
             
              
              
        ]);
  }
}
