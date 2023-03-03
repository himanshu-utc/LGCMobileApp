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


class CreatePasswordScreen extends StatefulWidget {
  static const String routeName = "/CreatePasswordScreen";

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
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
      body:SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 55),
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child:  Column(
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
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),

                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),


              Container(
                  margin: const EdgeInsets.only(left: 60,right: 60),
                  child: assetImageHelper(
                      image: ImageAssets.create_password)),

              const SizedBox(
                height: 50,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: textHelper(
                    textAlign: TextAlign.start,
                    title: StringHelper.create_new_pass,
                    textColor: ColorsHelper.textblue(),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),


              const SizedBox(
                height: 40,
              ),



              const SizedBox(
                height: 20,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: textHelper(
                    textAlign: TextAlign.start,
                    title: StringHelper.new_pass,
                    textColor: ColorsHelper.textblack(),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),


              const SizedBox(
                height: 10,
              ),

              textBoxContainer(
                  child: CreatePasswordformTextFeild(
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
                    title: StringHelper.confirm_pass,
                    textColor: ColorsHelper.textblack(),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),


              const SizedBox(
                height: 10,
              ),

              textBoxContainer(
                  child: CreatePasswordformTextFeild(
                    context: context,
                    // controller: passswordController,
                    // focusNode: passwordNode,
                    nextFocusNode: null,
                    hintText: StringHelper.confirm_password,
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    // validation: CommonValidator.passValidation,
                  )),


              const SizedBox(
                height: 20,
              ),



              Flexible(
                child:Align(
                  alignment: Alignment.bottomCenter,
                  child:  GestureDetector(
                    onTap:(){
                      launchOtpScreen(context);
                    },
                    child: Container(

                      child: submitNewButtonOrange(
                        title: StringHelper.next,

                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),


            ],
          ),

        ),
      ),
    );
  }


  void launchOtpScreen(BuildContext context) async {
    AppNavigator.launchSignUpOne(context);
  }


}
