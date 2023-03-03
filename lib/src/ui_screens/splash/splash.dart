import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utc_logistics/src/bloc/bloc_main/main_bloc.dart';
import 'package:utc_logistics/src/resources/colors.dart';
import 'package:utc_logistics/src/utils/app_navigator/app_navigator.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';
import 'package:utc_logistics/src/utils/common_widgets/common_widget.dart';


class Splash extends StatefulWidget {
  static const String routeName = "/";

  Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late MainBloc mainBloc;
  bool isLogin = false;

  @override
  void initState() {
    mainBloc = BlocProvider.of<MainBloc>(context);
    Future.delayed(const Duration(milliseconds: 1000), () async {
      launchLoginOrDashboardPage(context);
    });

    super.initState();
  }


  void launchLoginOrDashboardPage(BuildContext context) async {
      AppNavigator.launchLoginScreen(context);
  }

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      statusBarIconBrightness: Brightness.dark, //top bar icons
      systemNavigationBarColor: Colors.transparent, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    ));
    return Container(
      child: Scaffold(
          backgroundColor: ColorsHelper.whiteColor(),
          body: Container(
            constraints: const BoxConstraints.expand(),
            //logo_splash
            child: Center(
                child: assetImageHelper(image: ImageAssets.splash)
            ),
          )),
    );
  }
}
