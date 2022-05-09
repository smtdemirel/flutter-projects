import 'package:flutter/material.dart';

class LoginSayfasi extends StatefulWidget {
  const LoginSayfasi({ Key? key }) : super(key: key);

  @override
  State<LoginSayfasi> createState() => _LoginSayfasiState();
}

class _LoginSayfasiState extends State<LoginSayfasi> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: Column(
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight*0.25,
                    color: Colors.yellow,
                    child: Text('User'),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight*0.25,
                    color: Colors.green,
                  ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight*0.25,
                    color: Colors.red,
                  ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight*0.25,
                    color: Colors.black,
                  ),
                ],
              )
            );
          },
        );
  }
}