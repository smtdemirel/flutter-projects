import 'package:flutter/material.dart';

class FavoriSayfasi extends StatefulWidget {
  const FavoriSayfasi({ Key? key }) : super(key: key);

  @override
  State<FavoriSayfasi> createState() => _FavoriSayfasiState();
}

class _FavoriSayfasiState extends State<FavoriSayfasi> {




  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: Column(
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight*0.25,
                    color: Colors.yellow,
                    child: Text('Favoriler'),
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
        ),
        ),
    );
  }

  }