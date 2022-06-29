import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/core/base/base.dart';
import 'package:organico/core/constants/fonts/font_style.dart';
import 'package:organico/core/constants/icons/icons_const.dart';
import 'package:organico/core/extension/context_extension.dart';
import 'package:organico/screens/authentication/cubit/auth_cubit.dart';
import 'package:organico/screens/profile/cubit/profile_cubit.dart';
import 'package:organico/widgets/appbar/appbar_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: ProfileView,
        onPageBuildre: (context, widget) => scaffold(context));
  }

  Scaffold scaffold(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            AppBarWidget(
              leading: const Text(
                "Profile",
                style: FStyles.headline4b,
              ),
              trailing: IconConst.bell,
            ),
            sizedBox(48, context),
            CircleAvatar(
              radius: context.w * 85.5,
              foregroundImage: AssetImage("assets/profile/images/avatar.png"),
            ),
            sizedBox(24, context),
            const Text("Jane Doe",style: FStyles.headline4b,),
            sizedBox(8, context),
            Text(context.watch<AuthCubit>().phoneNumberController.text,style: FStyles.headline4p,),
            sizedBox(32, context),
            Expanded(child: 
            ListView.builder(itemBuilder: (ctx,ind){
              return ListTile(
                leading: SvgPicture.asset(context.watch<ProfileCubit>().profile[ind].iamge),
                title: Text(context.watch<ProfileCubit>().profile[ind].name),
                onTap: (){
                  if(ind==0){
                       NavigationService.instance.pushNamed("/editProfile");
                  }else if(ind==1){
                       NavigationService.instance.pushNamed("/orders");
                  }else if(ind==2){
                       NavigationService.instance.pushNamed("/wishlist");
                  }else if(ind==3){
                       NavigationService.instance.pushNamed("/address");
                  }
                },
                
              );
            },
            itemCount: context.watch<ProfileCubit>().profile.length,
            ))
          ],
        )),
      );

  SizedBox sizedBox(double size, BuildContext context) => SizedBox(
        height: context.w * size,
      );
}
