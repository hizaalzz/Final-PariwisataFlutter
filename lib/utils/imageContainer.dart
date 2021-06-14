import 'package:flutter/material.dart';

import 'TextStyles.dart';
import 'consts.dart';
import 'forms.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 500.0,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/info2.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0, left: 20, right: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BoldText("Selamat Datang", 30.0, kwhite),
                  BoldText("Pariwisata apa yang anda inginkan ?", 20.0, kwhite)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0, left: 20, right: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: NormalForm(Icons.search, "Temukan pariwisata anda disini"),
            ),
          )
        ],
      ),
    );
  }
}
