import 'dart:io';

import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';
import '../../resources/colors.dart';
import '../../resources/strings.dart';
import '../../utils/app_navigator/app_navigator.dart';
import '../../utils/common_widgets/common_widget.dart';


class RegisterSuccessfull extends StatefulWidget {
  static const String routeName = "/RegisterSuccessfull";

  @override
  _RegisterSuccessfullState createState() => _RegisterSuccessfullState();
}

class _RegisterSuccessfullState extends State<RegisterSuccessfull> {
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
        margin: const EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:

        Column(
          children: [
            const SizedBox(
              height: 50,
            ),




            Expanded(

              child: Align(
                alignment: Alignment.center,
                child: assetImageHelper(
                  image: ImageAssets.circle_large,
                ),
              ),
            ),






            Center(
              child: textHelperSimple(
                  textColor: ColorsHelper.textblue(),
                  title: StringHelper.account,
                  fontSize: 21,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w600),
            ),

            const SizedBox(
              height: 20,
            ),
            Center(
              child: textHelperSimple(
                  textColor: ColorsHelper.textblack(),
                  title: StringHelper.you_can,
                  fontSize: 13,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.normal),
            ),

            Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [

                      Expanded(
                        child:Align(
                          alignment: Alignment.bottomCenter,
                          child:  GestureDetector(
                            onTap:(){
                              launchOtpScreen(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: submitNewButtonOrange(
                                title: StringHelper.login,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),


            const SizedBox(
              height: 30,
            ),





          ],
        ),

      ),
    );
  }


  void launchOtpScreen(BuildContext context) async {
    AppNavigator.launchLoginScreen(context);
  }


}
