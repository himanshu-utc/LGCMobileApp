
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';

import '../../resources/colors.dart';
import '../../resources/strings.dart';
import '../../utils/app_navigator/app_navigator.dart';
import '../../utils/common_widgets/common_widget.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName = "/LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {
  bool isHide = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passswordController = TextEditingController();

  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();


  final List<Widget> myTabs = [
    Tab(text: 'OTP'),
    Tab(text: 'Password'),
  ];

   late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  _listItem() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.blueAccent,
        ),
      ),
      height: 120,
      child: Center(
        child: Text('List Item', style: TextStyle(fontSize: 20.0)),
      ),
    );
  }






  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.grey, //top bar color
      statusBarIconBrightness: Brightness.dark, //top bar icons
      systemNavigationBarColor: Colors.white, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    ));
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(top: 35),
          padding: const EdgeInsets.symmetric(horizontal: 37),
          decoration: const BoxDecoration(
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
                  height: 30,
                ),


                Container(
                    child: assetImageHelper(
                        image: ImageAssets.login,height: 180)),

                const SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Expanded(
                    //   child: new Container(
                    //       margin: const EdgeInsets.only(left: 10.0, right: 40.0),
                    //       child: Divider(
                    //         thickness: 1.8,
                    //         color: Colors.black,
                    //         height: 36,
                    //       )),
                    // ),

                    Align(
                      alignment: Alignment.center,
                      child: textHelper(
                          textAlign: TextAlign.start,
                          title: StringHelper.login,
                          textColor: ColorsHelper.heading(),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    //
                    // Expanded(
                    //   child: new Container(
                    //       margin: const EdgeInsets.only(left: 40.0, right: 10.0),
                    //       child: Divider(
                    //         thickness: 1.8,
                    //         color: Colors.black,
                    //         height: 36,
                    //       )),
                    // ),
                  ],
                ),


                const SizedBox(
                  height: 30,
                ),


                Container(
                  //margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: ColorsHelper.bordergrey()),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                    //    isScrollable: true,
                    //    unselectedLabelColor: Colors.black,
                        indicator: BoxDecoration(
                         // borderRadius: BorderRadius.circular(50),
                          color: ColorsHelper.bordergrey(),
                        ),
                        controller: _tabController,
                        labelColor: ColorsHelper.textblue(),
                        unselectedLabelColor:ColorsHelper.textgrey() ,

                        tabs: [ Tab(
                          child: Container(
                            height: 40,
                            child: Align(
                                //alignment: Alignment.center,
                                child: Text('OTP')),
                          ),
                        ),
                          Tab(
                            child: Container(
                              height: 40,
                             // padding: EdgeInsets.only(left: 20, right: 20),
                              child: Align(
                                 // alignment: Alignment.center,
                                  child: Text('Password')),
                            ),
                          ),],
                      ),
                      Center(
                        child: [
                      Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [

            Align(
              alignment: Alignment.centerLeft,
              child: textHelper(
                  textAlign: TextAlign.start,
                  title: StringHelper.email,
                  fontSize: 14,
                  textColor: ColorsHelper.textblue(),

                  fontWeight: FontWeight.w600),
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
              height: 20,
            ),



            GestureDetector(
              onTap:(){
                launchOtpScreen(context);
              },
              child:Container(
            //    margin: const  EdgeInsets.fromLTRB(8, 0, 8, 0),
                child:   submitNewButtonOrange(
                  title: StringHelper.send_otp,
                ),
              ) ,
            ),
          ],
        ),
      ),

                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Column(
                              children: [

                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: textHelper(
                                      textAlign: TextAlign.start,
                                      title: StringHelper.email,
                                      fontSize: 14,
                                      textColor: ColorsHelper.textblue(),

                                      fontWeight: FontWeight.w600),
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
                                  height: 20,
                                ),

                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: textHelper(
                                      textAlign: TextAlign.start,
                                      title: StringHelper.pass,
                                      fontSize: 14,
                                      textColor: ColorsHelper.textblue(),
                                      fontWeight: FontWeight.w600),
                                ),


                                const SizedBox(
                                  height: 10,
                                ),

                                textBoxContainer(
                                    child: PassformTextFeild(
                                        context: context,
                                        controller: passswordController,
                                        focusNode: passwordNode,
                                        nextFocusNode: null,
                                        hintText: StringHelper.password,
                                        textInputType: TextInputType.text,
                                        textInputAction: TextInputAction.done,
                                        // validation: CommonValidator.passValidation,
                                        obscureText: isHide,
                                        suffixIcon: true,
                                        suffixFuncton: () {
                                          if (mounted) {
                                            isHide = !isHide;
                                            setState(() {});
                                          }
                                        })),

                                const SizedBox(
                                  height: 20,
                                ),

                                GestureDetector(
                                  onTap: (){
                                    launchForgotPasswordPage(context);
                                  },
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: textHelper(
                                        textAlign: TextAlign.start,
                                        title: StringHelper.forgot_password,
                                        fontSize: 11,
                                        textColor: ColorsHelper.textblue(),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),

                                const SizedBox(
                                  height: 40,
                                ),



                                GestureDetector(
                                  onTap:(){
                                    launchDashboard(context);
                                  },
                                  child:Container(
                                    margin: const  EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    child:   submitNewButtonOrange(
                                      title: StringHelper.login,
                                    ),
                                  ) ,
                                ),
                              ],
                            ),
                          ),

                        ][_tabController.index],
                      )
                    ],
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
                            color: ColorsHelper.grey_edittext_text(),
                            height: 36,
                          )),
                    ),

                    Align(
                      //  alignment: Alignment.centerLeft,
                      child: textHelper(
                          textAlign: TextAlign.start,
                          title: StringHelper.or,
                          fontSize: 14,
                          textColor: ColorsHelper.textblue(),
                          fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            thickness: 1,
                            color: ColorsHelper.grey_edittext_text(),
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
                    launchSignupPage(context);
                  },
                  child: Container(
                    margin: const  EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child:   submitNewButtonBlue(
                        title: StringHelper.sign_up,


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


  void launchSignupPage(BuildContext context) async {
    AppNavigator.launchSignupScreen(context);
  }

  void launchForgotPasswordPage(BuildContext context) async {
    AppNavigator.launchForgotPasswordScreen(context);
  }

  void launchDashboard(BuildContext context) async {
    AppNavigator.launchDashboardScreen(context);
  }


  void launchOtpScreen(BuildContext context) async {
    AppNavigator.launchLoginOtpScreen(context);
  }


}
