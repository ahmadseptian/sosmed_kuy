import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/utils/constants.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_backspace),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: Text(
          "Pengaturan",
          style: TextStyle(),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
             ListTile(
              title: Text(
                "Tentang",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Text("Kelompok Programming mobile \n Ahmad Septiana 19552011147 \n Andre Priyono 19552011192 \n Ichsan Fadilah 19552011135  \n Ziyan 19552011057 \n Patrick 19552011172"),
              trailing: Icon(Icons.error)
            ),
            Divider(),
            ListTile(
              title: Text(
                "Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Text("gunakan dark mode"),
              trailing: Consumer<ThemeNotifier>(
                builder: (context, notifier, child) => CupertinoSwitch(
                  onChanged: (val) {
                    notifier.toggleTheme();
                  },
                  value: notifier.dark,
                  activeColor: Theme.of(context).accentColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
