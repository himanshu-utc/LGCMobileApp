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


class RegisterVehicleScreen extends StatefulWidget {
  static const String routeName = "/RegisterVehicleScreen";

  @override
  _RegisterVehicleScreenState createState() => _RegisterVehicleScreenState();
}

class _RegisterVehicleScreenState extends State<RegisterVehicleScreen> {
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
          margin: const EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child:  Column(
            children: [
              // const SizedBox(
              //   height: 20,
              // ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                              title: StringHelper.vehicle_detail,
                              textColor: ColorsHelper.heading(),
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),

                      ],
                    ),



                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: textHelper(
                              textAlign: TextAlign.start,
                              title: StringHelper.add_in_bluk,
                              textColor: ColorsHelper.orange(),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Icon(
                              Icons.arrow_forward,
                              size: 22,
                              color: ColorsHelper.orange(),
                            ),
                          ),
                        ),
                      ],
                    )


                  ],
                ),
              ),

              const SizedBox(
                height: 40,
              ),



              Column(
                children: [
                  textBoxContainer(
                      child: addvehicleformTextFeild(
                        context: context,
                        // controller: passswordController,
                        // focusNode: passwordNode,
                        nextFocusNode: null,
                        hintText: StringHelper.vehicle_number,
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        // validation: CommonValidator.passValidation,
                      )),


                  const SizedBox(
                    height: 30,
                  ),



                  textBoxContainer(
                      child: adddrivernameformTextFeild(
                        context: context,
                        // controller: passswordController,
                        // focusNode: passwordNode,
                        nextFocusNode: null,
                        hintText: StringHelper.driver_name,
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        // validation: CommonValidator.passValidation,
                      )),


                  const SizedBox(
                    height: 30,
                  ),



                  textBoxContainer(
                      child: adddrivernumberformTextFeild(
                        context: context,
                        // controller: passswordController,
                        // focusNode: passwordNode,
                        nextFocusNode: null,
                        hintText: StringHelper.driver_number,
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        // validation: CommonValidator.passValidation,
                      )),


                ],
              ),



              const SizedBox(
                height: 30,
              ),

              Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                child:FDottedLine(
                  color: ColorsHelper.grey(),
                  width: MediaQuery.of(context).size.width,
                  strokeWidth: 2.0,
                  dottedLength: 10.0,
                  space: 2.0,
                ) ,
              ),

              const SizedBox(
                height: 30,
              ),


              Column(
                children: [
                  textBoxContainer(
                      child: addvehicleformTextFeild(
                        context: context,
                        // controller: passswordController,
                        // focusNode: passwordNode,
                        nextFocusNode: null,
                        hintText: StringHelper.vehicle_number,
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        // validation: CommonValidator.passValidation,
                      )),


                  const SizedBox(
                    height: 30,
                  ),



                  textBoxContainer(
                      child: adddrivernameformTextFeild(
                        context: context,
                        // controller: passswordController,
                        // focusNode: passwordNode,
                        nextFocusNode: null,
                        hintText: StringHelper.driver_name,
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        // validation: CommonValidator.passValidation,
                      )),


                  const SizedBox(
                    height: 30,
                  ),



                  textBoxContainer(
                      child: adddrivernumberformTextFeild(
                        context: context,
                        // controller: passswordController,
                        // focusNode: passwordNode,
                        nextFocusNode: null,
                        hintText: StringHelper.driver_number,
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        // validation: CommonValidator.passValidation,
                      )),

                ],
              ),




              const SizedBox(
                height: 30,
              ),


              GestureDetector(
                onTap:(){
               //   launchBlukUploadScreen(context);
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: submitNewButtonOrange(
                    title: StringHelper.add_more,

                  ),
                ),
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
                                launchBlukUploadScreen(context);
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
                                launchBlukUploadScreen(context);
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
      ),
    );
  }


  void launchBlukUploadScreen(BuildContext context) async {
    AppNavigator.launchBlukUploadScreen(context);
  }

  void addmoreContainer(BuildContext context){

  }


}
