import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';
import 'package:utc_logistics/src/utils/app_navigator/app_navigator.dart';
import '../../resources/colors.dart';
import '../../resources/strings.dart';
import '../../utils/common_widgets/common_widget.dart';


class ForgotPasswordScreen extends StatefulWidget {
  static const String routeName = "/ForgotPasswordScreen";

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isHide = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passswordController = TextEditingController();

  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();


  // MainBloc mainBloc;

  @override
  void initState() {
    // mainBloc = BlocProvider.of<MainBloc>(context);
    super.initState();
  }





  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.grey, //top bar color
    //   statusBarIconBrightness: Brightness.dark, //top bar icons
    //   systemNavigationBarColor: Colors.white, //bottom bar color
    //   systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    // ));
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 35),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            image:  DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(
                  height: 20,
                ),

                Container(
                  child:  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child:  Container(
                          child: Icon(
                            Icons.arrow_back,
                            size: 24,
                            color: ColorsHelper.btn_blue(),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: textHelper(
                            textAlign: TextAlign.start,
                            title: StringHelper.forgot,
                            textColor: ColorsHelper.blackColor(),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),

                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),


                Container(
                    child: assetImageHelper(
                        image: ImageAssets.forgot)),

                const SizedBox(
                  height: 30,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.welcome3,
                      textColor: ColorsHelper.btn_blue(),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),


                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.welcome4,
                      textColor: ColorsHelper.blackColor(),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),

                const SizedBox(
                  height: 40,
                ),

                textBoxContainer(
                    child: formTextFeild(
                      context: context,
                      controller: emailController,
                      focusNode: emailNode,
                      nextFocusNode: passwordNode,
                      hintText: StringHelper.email_ID,
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      //    validation: CommonValidator.emailValidation
                    )),

                const SizedBox(
                  height: 40,
                ),


                GestureDetector(
                  onTap: (){
                    launchOtpScreen(context);
                  },
                  child:  Container(
                    margin: const  EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child:   submitNewButtonOrange(
                      title: StringHelper.send,
                    ),
                  ),
                )
               ,

                const SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.black,
                            height: 36,
                          )),
                    ),

                    Align(
                      //  alignment: Alignment.centerLeft,
                      child: textHelper(
                          textAlign: TextAlign.start,
                          title: StringHelper.or,
                          textColor: ColorsHelper.blackColor(),
                          fontWeight: FontWeight.w500),

                    ),
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.black,
                            height: 36,
                          )),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),


                GestureDetector(
                  onTap: (){
                  //  launchSignupPage(context);
                  },
                  child: Container(
                    margin: const  EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child:   submitNewButtonBlue(
                        title: StringHelper.backtologin,

                    ),
                  ),
                ),


                const SizedBox(
                  height: 20,
                ),

              ],
            ),
          )



      ),
    );
  }



  void launchOtpScreen(BuildContext context) async {
    AppNavigator.launchFogotOtpScreen(context);
  }

}
