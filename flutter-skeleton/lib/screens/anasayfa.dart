import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({ Key? key }) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
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
                    child: Text('Ana Sayfa'),
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