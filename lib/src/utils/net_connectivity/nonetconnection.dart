import 'package:flutter/material.dart';

class NoNetConnection extends StatelessWidget {
  const NoNetConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "no_Internet_Connection",
            ),
            SizedBox(height: 4.0),
            Text(
              "please_try_to_connect_with_internet",
            )
          ],
        ),
      ),
    );
  }
}
