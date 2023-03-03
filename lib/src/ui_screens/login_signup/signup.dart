import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';

import '../../resources/colors.dart';
import '../../resources/strings.dart';
import '../../utils/app_navigator/app_navigator.dart';
import '../../utils/common_widgets/common_widget.dart';


class SignUpScreen extends StatefulWidget {
  static const String routeName = "/SignUpScreen";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 15),
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child:  ListView(
            children: [



              Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: ColorsHelper.heading(),
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
                          title: StringHelper.sign_up,
                          textColor: ColorsHelper.heading(),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),

                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),


              Container(
                  child: assetImageHelper(
                      image: ImageAssets.signup)),

              const SizedBox(
                height: 30,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: textHelper(
                    textAlign: TextAlign.start,
                    title: StringHelper.welcome,
                    textColor: ColorsHelper.textblue(),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),


              Align(
                alignment: Alignment.centerLeft,
                child: textHelper(
                    textAlign: TextAlign.start,
                    title: StringHelper.welcome1,
                    textColor: ColorsHelper.textblack(),
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),

              const SizedBox(
                height: 40,
              ),



              Align(
                alignment: Alignment.centerLeft,
                child: textHelper(
                    textAlign: TextAlign.start,
                    title: StringHelper.mobile_number,
                    textColor: ColorsHelper.textblack(),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),


              const SizedBox(
                height: 10,
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
                onTap:(){
                  launchOtpScreen(context);
                },
                child: Container(
                  child: submitNewButtonOrange(
                    title: StringHelper.send_otp,

                  ),
                ),
              ),






              const SizedBox(
                height: 20,
              ),


            ],
          ),

      ),
    );
  }


  void launchOtpScreen(BuildContext context) async {
    AppNavigator.launchRegisterOtpScreen(context);
  }


}
