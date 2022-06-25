
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico/screens/main/cubit/main_cubit.dart';
import 'package:organico/screens/main/state/main_state.dart';
import 'package:organico/widgets/bottom_navigation_widget/bottom_navigation_bar_widget.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=> MainCubit(),
     
      child: scofold(context));
  }

  Scaffold scofold(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is HomeState) {
              return const Center(child: Text('Home page'),);
            } else if (state is ExploreState) {
              return const Center(child: Text('Explore page'),);
            } else if (state is CartState) {
              return const Center(child: Text('Home page'),);
            } else if (state is ProfileState) {
              return const 
               Center(child: Text('Profile page'),);
            } else {
              return Container();
            }
          }),
    );
  }
}
