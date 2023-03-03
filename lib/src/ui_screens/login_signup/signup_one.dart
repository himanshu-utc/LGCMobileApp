import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';
import 'package:utc_logistics/src/utils/app_navigator/app_navigator.dart';

import '../../resources/colors.dart';
import '../../resources/strings.dart';
import '../../utils/common_widgets/common_widget.dart';


class SignUpOneScreen extends StatefulWidget {
  static const String routeName = "/SignUpOneScreen";

  @override
  _SignUpOneScreenState createState() => _SignUpOneScreenState();
}

class _SignUpOneScreenState extends State<SignUpOneScreen> {
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
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,

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
                            title: StringHelper.detail,
                            textColor: ColorsHelper.heading(),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),

                    ],
                  ),
                ),

                // const SizedBox(
                //   height: 20,
                // ),

                //
                // Container(
                //     child: assetImageHelper(
                //         image: ImageAssets.signup)),
                //
                // const SizedBox(
                //   height: 30,
                // ),
                //
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: textHelper(
                //       textAlign: TextAlign.start,
                //       title: StringHelper.welcome,
                //       textColor: ColorsHelper.btn_blue(),
                //       fontSize: 20,
                //       fontWeight: FontWeight.w700),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                //
                //
                //
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: textHelper(
                //       textAlign: TextAlign.start,
                //       title: StringHelper.welcome1,
                //       textColor: ColorsHelper.blackColor(),
                //       fontSize: 13,
                //       fontWeight: FontWeight.w400),
                // ),

                const SizedBox(
                  height: 40,
                ),


                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.business,
                      textColor: ColorsHelper.textblack(),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),

                const SizedBox(
                  height: 10,
                ),




                textBoxContainer(
                    child: signupformTextFeild(
                      context: context,
                      controller: emailController,
                      focusNode: emailNode,
                      nextFocusNode: passwordNode,
                      hintText: StringHelper.email_ID,
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      //validation: CommonValidator.emailValidation
                    )),

                const SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.first_name,
                      textColor: ColorsHelper.textblack(),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),


                const SizedBox(
                  height: 10,
                ),

                textBoxContainer(
                    child: signupformTextFeild(
                      context: context,
                      controller: passswordController,
                      focusNode: passwordNode,
                      nextFocusNode: null,
                      hintText: StringHelper.password,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      // validation: CommonValidator.passValidation,
                    )),

                const SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.last_name,
                      textColor: ColorsHelper.textblack(),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),


                const SizedBox(
                  height: 10,
                ),

                textBoxContainer(
                    child: signupformTextFeild(
                      context: context,
                      // controller: passswordController,
                      // focusNode: passwordNode,
                      nextFocusNode: null,
                      hintText: StringHelper.password,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      // validation: CommonValidator.passValidation,
                    )),

                const SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.emaill,
                      textColor: ColorsHelper.textblack(),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),


                const SizedBox(
                  height: 10,
                ),

                textBoxContainer(
                    child: signupformTextFeild(
                      context: context,
                      // controller: passswordController,
                      // focusNode: passwordNode,
                      nextFocusNode: null,
                      hintText: StringHelper.password,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      // validation: CommonValidator.passValidation,
                    )),

                const SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.pincode,
                      textColor: ColorsHelper.textblack(),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),


                const SizedBox(
                  height: 10,
                ),

                textBoxContainer(
                    child: signupformTextFeild(
                      context: context,
                      // controller: passswordController,
                      // focusNode: passwordNode,
                      nextFocusNode: null,
                      hintText: StringHelper.password,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      // validation: CommonValidator.passValidation,
                    )),


                const SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.city,
                      textColor: ColorsHelper.textblack(),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),


                const SizedBox(
                  height: 10,
                ),

                textBoxContainer(
                    child: signupformTextFeild(
                      context: context,
                      // controller: passswordController,
                      // focusNode: passwordNode,
                      nextFocusNode: null,
                      hintText: StringHelper.password,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      // validation: CommonValidator.passValidation,
                    )),


                const SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.state,
                      textColor: ColorsHelper.textblack(),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),

                const SizedBox(
                  height: 10,
                ),

                textBoxContainer(
                    child: signupformTextFeild(
                      context: context,
                      // controller: passswordController,
                      // focusNode: passwordNode,
                      nextFocusNode: null,
                      hintText: StringHelper.password,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      // validation: CommonValidator.passValidation,
                    )),



                const SizedBox(
                  height: 40,
                ),




                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red, value: false,
                      onChanged: (bool? value) {},

                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: textHelper(
                          textAlign: TextAlign.start,
                          title: StringHelper.business1,
                          textColor: ColorsHelper.textblue(),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    const SizedBox(
                      width: 6,
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: textHelper(
                          textAlign: TextAlign.start,
                          title: StringHelper.business2,
                          textColor: ColorsHelper.textblue(),
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),


                GestureDetector(
                  onTap: (){
                    launchOtpScreen(context);
                  },
                  child:  Container(
                    margin: const  EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child:   submitNewButtonOrange(
                      title: StringHelper.sav,
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
    AppNavigator.launchRegisterVehicleScreen(context);
  }



}
