import 'package:flutter/material.dart';
import 'package:meal_app_2/account_page.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 243, 247, 2),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 70,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.account_circle),
                      SizedBox(width: 8),
                      Text(
                        'アカウント設定',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 70,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.notifications_rounded),
                      SizedBox(width: 10),
                      Text(
                        '通知設定',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
