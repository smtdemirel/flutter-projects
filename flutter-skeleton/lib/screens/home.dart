import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Loading.dart';
import 'anasayfa.dart';
import 'favori.dart';
import 'user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _loading = false;
  String _title = 'AnaSayfa';
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return _loading != false
        ? LoadingScreen()
        : Scaffold(
            appBar: AppBar(
              title: Text(
                _title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Color(0xFF7033FF),
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: '', icon: Icon(CupertinoIcons.heart_fill)),
                BottomNavigationBarItem(label: '', icon: Icon(Icons.person)),
              ],
              onTap: (index) {
                _getChangeMenu(index);
              },
            ),
            body: Container(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return _changePage(_currentIndex);
                },
              ),
            ),
          );
  }

  Drawer _createSideMenu(BuildContext context) {
    return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                    child: Text(
                      'Side menu',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    )),
                ListTile(
                  leading: Icon(Icons.input),
                  title: Text('Welcome'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('Profile'),
                  onTap: ()=>Get.to(LoginSayfasi())
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.border_color),
                  title: Text('Feedback'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ],
            ),
          );
  }

  void _getChangeMenu(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      setState(() {
        _title = 'AnaSayfa';
      });
    } else if (index == 1) {
      setState(() {
        _title = 'Favorilerim';
      });
    } else if (index == 2) {
      setState(() {
        _title = 'Login Sayfası';
      });
    }
    _changePage(index);
  }

  _changePage(int index) {
    if (index == 0) {
      return AnaSayfa();
    } else if (index == 1) {
      return FavoriSayfasi();
    } else if (index == 2) {
      return LoginSayfasi();
    }
  }
}
