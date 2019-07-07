import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:arabization_task/registeration.dart';

class ChnageLang extends StatefulWidget {
  @override
  _ChnageLangState createState() => _ChnageLangState();
}

class _ChnageLangState extends State<ChnageLang> {
  String nameKey = "lang";
  Future<bool> saveData(String l) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(nameKey, l);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Your Lang"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 180, 8.0, 8.0),
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.red.withOpacity(1.0),
                elevation: 0.0,
                child: MaterialButton(
                  onPressed: () {
                    saveData("English");
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SignUp()));
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "English",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.red.withOpacity(1.0),
                elevation: 0.0,
                child: MaterialButton(
                  onPressed: () {
                    saveData("Arabic");
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SignUp()));
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "عربي",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
