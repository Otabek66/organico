import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico/config/init/navigation_servise.dart';
import 'package:organico/config/routes/routes.dart';
import 'package:organico/screens/authentication/cubit/auth_cubit.dart';
import 'package:organico/screens/authentication/view/splash_view.dart';
import 'package:organico/screens/profile/cubit/profile_cubit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(MultiBlocProvider(providers: [
      BlocProvider(create: (context) => AuthCubit()),
      BlocProvider(create: (context) => ProfileCubit()),
    ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       initialRoute: "/signIn",
          onGenerateRoute: Routes.instance.onGenerateRoute,
          navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}

