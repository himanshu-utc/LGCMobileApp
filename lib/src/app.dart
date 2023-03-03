import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:utc_logistics/src/bloc/bloc_dashboard/dashboard_bloc.dart';
import 'package:utc_logistics/src/bloc/bloc_main/main_bloc.dart';
import 'package:utc_logistics/src/resources/colors.dart';
import 'package:utc_logistics/src/resources/fonts.dart';
import 'package:utc_logistics/src/resources/strings.dart';
import 'package:utc_logistics/src/ui_screens/dashboard/dashboard_screen.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/bluk_upload.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/create_password.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/forgotPassword.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/otp_screens/forgot_otp_screen.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/otp_screens/login_otp_screen.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/otp_screens/register_otp_screen.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/register_successful.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/signup.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/signup_one.dart';
import 'package:utc_logistics/src/utils/net_connectivity/connectionService.dart';
import 'package:utc_logistics/src/utils/net_connectivity/nonetconnection.dart';
import 'package:utc_logistics/src/utils/pagerouting/slideleftroute.dart';
import 'package:utc_logistics/src/ui_screens/splash/splash.dart';
import 'ui_screens/login_signup/login.dart';
import 'ui_screens/login_signup/register_vehicle.dart';



class MyApp extends StatelessWidget {
  final MainBloc mainBloc = MainBloc(MainInitial());
  DashboardBloc dashboardBloc = DashboardBloc(DashboardInitial());

  void dispose() {
    mainBloc.close();
    dashboardBloc.close();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dashboardBloc,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: StringHelper.app_name,
        home: BlocProvider(create: (context) => mainBloc, child: Splash()),
        theme: ThemeData(
            brightness: Brightness.light,
            accentColor: ColorsHelper.greyColor(),
            primaryColor: ColorsHelper.blueColor(),
            scaffoldBackgroundColor: ColorsHelper.whiteColor(),
            fontFamily: FontsHelper.fonts_Poppins),
        onGenerateRoute: routes,
      ),
    );
  }



  Route routes(RouteSettings settings) {
    var page;
    String? routeName = settings.name;
    switch (routeName) {
   // Splash
      case Splash.routeName:
        page = BlocProvider(create: (context) => mainBloc, child: Splash());
        break;
    //LoginScreen
      case LoginScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: LoginScreen());
        break;
    //SignUpScreen
      case SignUpScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: SignUpScreen());
        break;
    //SignUpOneScreen
        case SignUpOneScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: SignUpOneScreen());
        break;
    //ForgotPasswordScreen
      case ForgotPasswordScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: ForgotPasswordScreen());
        break;
   //Dashboard Screen
        case DashboardScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: DashboardScreen());
        break;

    //ForgotOTP Screen
        case ForgotOtpScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: ForgotOtpScreen());
        break;

        //RegisterOtpScreen
        case RegisterOtpScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: RegisterOtpScreen());
        break;

        //LoginOtpScreen Screen
        case LoginOtpScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: LoginOtpScreen());
        break;

    //Create Password Screen
        case CreatePasswordScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: CreatePasswordScreen());
        break;

    //Register Vehicle Screen
        case RegisterVehicleScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: RegisterVehicleScreen());
        break;


        //Bluk Upload Screen
        case BlukUploadScreen.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: BlukUploadScreen());
        break;


        //RegisterSuccessfull Screen
        case RegisterSuccessfull.routeName:
        page =
            BlocProvider(create: (context) => mainBloc, child: RegisterSuccessfull());
        break;
    }

    return SlideLeftRoute(
        widget: StreamBuilder(
            stream: ConnectionService.getInstance().connectionStatus,
            builder:
                (BuildContext context, AsyncSnapshot<dynamic> netConnection) {
              if (netConnection.data == null) {
                return page;
              } else {
                return page;
              }
            })
      // page
    );
  }


}

