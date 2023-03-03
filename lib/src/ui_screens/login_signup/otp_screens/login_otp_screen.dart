import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';
import 'package:utc_logistics/src/utils/app_navigator/app_navigator.dart';
import '../../../resources/colors.dart';
import '../../../resources/strings.dart';
import '../../../utils/common_widgets/common_widget.dart';


class LoginOtpScreen extends StatefulWidget {
  static const String routeName = "/LoginOtpScreen";

  @override
  _LoginOtpScreenState createState() => _LoginOtpScreenState();
}

class _LoginOtpScreenState extends State<LoginOtpScreen> {
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
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.only(top: 55),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            // decoration: const BoxDecoration(
            //   color: Colors.white,
            //   image:  DecorationImage(
            //     image: AssetImage("assets/loginbg.png"),
            //     fit: BoxFit.cover,
            //   ),
            // ),

            child: Column(
              children: <Widget>[


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
                          title: StringHelper.login,
                          textColor: ColorsHelper.heading(),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  // height: 170,
                  // width: 290,
                  margin: const EdgeInsets.fromLTRB(50,0,50,0),
                  child: assetImageHelper(
                    image: ImageAssets.otp_back,
                  ),
                )
                ,
                /*loginUserLogo(),*/
                const SizedBox(
                  height: 70,
                ),

                Row(children:
                [
                  textHelperSimple(
                      textColor: ColorsHelper.textblue(),
                      title: StringHelper.enter_otp,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ]
                ),

                const SizedBox(
                  height: 10,
                ),

                Row(
                    children: [
                      Expanded(child: textHelperSimple(
                          textColor: ColorsHelper.textblue(),
                          title: StringHelper.otp_has_been_send_phone,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),)
                    ]
                ),
                //signupForm

                Row(
                    children: [
                      Expanded(child: textHelperSimple(
                          textColor: ColorsHelper.textblue(),
                          title: "+91 987***** 4545",
                          fontSize: 13,
                          fontWeight: FontWeight.bold),)
                    ]
                ),
                //signupForm
                const SizedBox(
                  height: 30,
                ),

                OtpTextField(
                  numberOfFields: 4,
                  borderColor: Color(0xFFEC762B),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  fieldWidth: 55,

                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        }
                    );
                  }, // end onSubmit
                ),

                const SizedBox(
                  height: 30,
                ),

                GestureDetector(
                  onTap: (){
                    //sendPassSuccessfulPage(context);
                    launchSignUpOne(context);
                  },

                  child:  Container(
                    margin: const  EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child:   submitNewButtonOrange(
                      title: StringHelper.verify,


                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),









                Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:
                              Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child:   Text(
                                    "Resend after 56 sec",style: TextStyle(color: ColorsHelper.textgrey()),
                                  )
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),

                        Align(
                          alignment: Alignment.bottomCenter,
                          child:

                          Container(
                              margin: const EdgeInsets.only(bottom: 35),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child:GestureDetector(
                                  onTap: (){
                                    //   Navigator.pop(context);
                                  },
                                  child:
                                  Container(

                                    child:   submitNewButtonBlue(
                                      title: StringHelper.resend,

                                    ),
                                  ),
                                ),
                              )
                          ),
                        )
                      ],
                    )


                )













              ],
            )
        ),
      ),
    );
  }



  void launchSignUpOne(BuildContext context) async {
    AppNavigator.launchDashboardScreen(context);
  }


}
