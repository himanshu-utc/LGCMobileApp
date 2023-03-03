import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utc_logistics/src/resources/image_assets.dart';
import 'package:utc_logistics/src/ui_screens/dashboard/SideMenu.dart';
import '../../resources/colors.dart';
import '../../resources/strings.dart';
import '../../utils/common_widgets/common_widget.dart';


class DashboardScreen extends StatefulWidget {
  static const String routeName = "/DashboardScreen";

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isHide = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passswordController = TextEditingController();

  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  int _selectedIndex = 0;

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
      drawer: SideMenu(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return RotatedBox(
              quarterTurns: 90,
              child:IconButton(
                icon:Image.asset('assets/menu.png',height:20 ,width:5 ,),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),

            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon:Image.asset('assets/bell.png',height:20 ,width:26 ,),
            onPressed: (){
              Navigator.pushNamed(context, '/search');
            },
          ),
        ],
      ),
      body: Container(
          margin: const EdgeInsets.only(top: 35),
          padding: const EdgeInsets.symmetric(horizontal: 35),
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




              ],
            ),
          )
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsHelper.textblue(),
        selectedLabelStyle: TextStyle(color: ColorsHelper.whiteColor(),fontSize: 9,),
        fixedColor: ColorsHelper.whiteColor(),
        unselectedLabelStyle:TextStyle(color: ColorsHelper.whiteColor(),fontSize: 9,),
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Padding(
              padding: EdgeInsets.all(5.0),
              child:  Image.asset('assets/tab_one.png',height: 36,width: 36,),
            ),
            label: 'Your Journey',
          ),
          BottomNavigationBarItem(
            icon:Padding(
              padding: EdgeInsets.all(5.0),
              child:  Image.asset('assets/tab_two.png',height: 36,width: 36,),
            ),
            label: 'Upcoming',
          ),
          BottomNavigationBarItem(
            icon:Padding(
              padding: EdgeInsets.all(5.0),
              child:  Image.asset('assets/tab_three.png',height: 36,width: 36,),
            ),
            label: 'Wallet',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
        onTap: _onTapHandler,
        currentIndex: _selectedIndex,
      ),
    );
  }



  void _onTapHandler(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }


}










