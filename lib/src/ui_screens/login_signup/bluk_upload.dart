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


class BlukUploadScreen extends StatefulWidget {
  static const String routeName = "/BlukUploadScreen";

  @override
  _BlukUploadScreenState createState() => _BlukUploadScreenState();
}

class _BlukUploadScreenState extends State<BlukUploadScreen> {
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:  Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: ColorsHelper.heading(),
                  ),
                ),

                const SizedBox(
                  width: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: textHelper(
                      textAlign: TextAlign.start,
                      title: StringHelper.upload_vehicle,
                      textColor: ColorsHelper.heading(),
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            GestureDetector(
              onTap: (){

              },
              child:Container(
                  width: double.infinity,
                  height: 50,
                  // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: ColorsHelper.textblue()),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child:  IconButton(
                          icon: assetImageHelper(
                              image: ImageAssets.upload), onPressed: () {  },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: textHelper(
                            textAlign: TextAlign.start,
                            title: StringHelper.download,
                            textColor: ColorsHelper.textblue(),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  )
              ) ,
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
                children: [
                  Expanded(child: textHelperSimple(
                      textColor: ColorsHelper.textblue(),
                      title: StringHelper.fill,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),)
                ]
            ),

            const SizedBox(
              height: 30,
            ),

            assetImageHelper(
              image: ImageAssets.sheet,
            ),


            const SizedBox(
              height: 30,
            ),


            GestureDetector(
              onTap: (){

              },
              child:Container(
                  width: double.infinity,
                  height: 50,
                  // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: ColorsHelper.btn_blue()),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child:  IconButton(
                          icon: assetImageHelper(
                              image: ImageAssets.upload), onPressed: () {  },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: textHelper(
                            textAlign: TextAlign.start,
                            title: StringHelper.upload,
                            textColor: ColorsHelper.textblue(),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  )
              ) ,
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
                              child: submitNewButtonBlue(
                                title: StringHelper.back,

                              ),
                            ),
                          ),
                        ),
                      ),
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
                                title: StringHelper.sav,

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
              height: 20,
            ),





          ],
        ),

      ),
    );
  }


  void launchOtpScreen(BuildContext context) async {
    AppNavigator.launchRegisterSuccessfull(context);
  }


}
