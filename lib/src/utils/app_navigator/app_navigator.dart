import 'package:flutter/material.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/bluk_upload.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/create_password.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/login.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/otp_screens/login_otp_screen.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/otp_screens/register_otp_screen.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/register_successful.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/register_vehicle.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/signup.dart';
import 'package:utc_logistics/src/ui_screens/login_signup/signup_one.dart';

import '../../ui_screens/dashboard/dashboard_screen.dart';
import '../../ui_screens/login_signup/forgotPassword.dart';
import '../../ui_screens/login_signup/otp_screens/forgot_otp_screen.dart';

class AppNavigator {
  //LoginScreen
  static void launchLoginScreen(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        LoginScreen.routeName, (Route<dynamic> route) => false);
  }

  //SignScreen
  static void launchSignupScreen(BuildContext context) {
    Navigator.pushNamed(
      context, SignUpScreen.routeName,
    );
  }

  //SignScreen
  static void launchForgotPasswordScreen(BuildContext context) {
    Navigator.pushNamed(
      context, ForgotPasswordScreen.routeName,
    );
  }

  //SignScreen
  static void launchSignUpOne(BuildContext context) {
    Navigator.pushNamed(
      context, SignUpOneScreen.routeName,
    );
  }


  //DashboardScreen
  static void launchDashboardScreen(BuildContext context) {
    Navigator.pushNamed(
      context, DashboardScreen.routeName,
    );
  }


  //FotgotOtpScreen
  static void launchFogotOtpScreen(BuildContext context) {
    Navigator.pushNamed(
      context, ForgotOtpScreen.routeName,
    );
  }


  //LoginOtpScreen
  static void launchLoginOtpScreen(BuildContext context) {
    Navigator.pushNamed(
      context, LoginOtpScreen.routeName,
    );
  }

  //RegisterOtpScreen
  static void launchRegisterOtpScreen(BuildContext context) {
    Navigator.pushNamed(
      context, RegisterOtpScreen.routeName,
    );
  }


  //CreatePasswordScreen
  static void launchCreatePasswordScreen(BuildContext context) {
    Navigator.pushNamed(
      context, CreatePasswordScreen.routeName,
    );
  }

  //RegisterVehicleScreen
  static void launchRegisterVehicleScreen(BuildContext context) {
    Navigator.pushNamed(
      context, RegisterVehicleScreen.routeName,
    );
  }


  //RegisterVehicleScreen
  static void launchBlukUploadScreen(BuildContext context) {
    Navigator.pushNamed(
      context, BlukUploadScreen.routeName,
    );
  }


  //RegisterSuccessfull
  static void launchRegisterSuccessfull(BuildContext context) {
    Navigator.pushNamed(
      context, RegisterSuccessfull.routeName,
    );
  }


  //
  // //DegreeScreen
  // static void launchDegreeScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     DegreeScreen.routeName,
  //   );
  // }
  //
  // //KYCScreen
  // static void launchKYCScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     KycUploadScreen.routeName,
  //   );
  // }
  //
  // //ForgotPassword
  // static void launchForgotPasswordScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     ForgotPassword.routeName,
  //   );
  // }
  //
  // //ResetPassword
  // static void launchResetPasswordScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     ResetPassword.routeName,
  //   );
  // }
  //
  // //DashBoard
  // static void launchDashBoard(BuildContext context) {
  //   Navigator.of(context).pushNamedAndRemoveUntil(
  //       DashBoard.routeName, (Route<dynamic> route) => false);
  // }
  //
  // //SearchSection
  // static void launchSearchSectionScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     SearchSection.routeName,
  //   );
  // }
  //
  // //Support
  // static void launchSupportScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     Support.routeName,
  //   );
  // }
  //
  // //ContactUs
  // static void launchContactUsScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     ContactUs.routeName,
  //   );
  // }
  //
  // //MedicalRecords
  // static void launchMedicalRecordsScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     MedicalRecords.routeName,
  //   );
  // }
  //
  // //UploadFiles
  // static void launchUploadFilesScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     UploadFiles.routeName,
  //   );
  // }
  //
  // //ChangePassword
  // static void launchChangePasswordScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     ChangePassword.routeName,
  //   );
  // }
  //
  // //PrescriptionScreen
  // static void launchPrescriptionScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     PrescriptionScreen.routeName,
  //   );
  // }
  //
  // //ImageViwer
  // static void launchImageViewerScreen(
  //     BuildContext context, String imageDetails) {
  //   Navigator.push(
  //       context,
  //       SlideLeftRoute(
  //           widget: HeroPhotoViewWrapper(
  //         imageProvider: NetworkImage(imageDetails),
  //       )));
  // }

  static void popBackStack(BuildContext context) {
    Navigator.pop(context);
  }
}
