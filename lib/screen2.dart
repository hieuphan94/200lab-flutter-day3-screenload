import 'package:flutter/material.dart';
import 'UIData.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(child: backGround()),
        Positioned(top: h / 4, left: w / 4, right: w / 4, child: logo()),
        Positioned(
            bottom: h / 6, left: w / 8, right: w / 8, child: btnFacebook()),
        Positioned(
            bottom: h / 11, left: w / 8, right: w / 8, child: btnPhone()),
      ],
    );
  }

  Widget backGround() {
    return Image.asset(UIData.bg,
        fit: BoxFit.cover, width: double.infinity, height: double.infinity);
  }

  Widget logo() {
    return Image.asset(
      UIData.logo,
    );
  }

  Widget btnFacebook() {
    return InkWell(
      onTap: () {
        print("Tap On Fb");
      },
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.blue[500],
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(UIData.icFb, width: 20, height: 20),
              Text(
                "Connect with Facebook",
                style: StylesText.fb,
              )
            ],
          )),
    );
  }

  Widget btnPhone() {
    return InkWell(
      onTap: () {
        print("Tap on Phone");
      },
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                UIData.icPhone,
              ),
              Text(
                "Connect with Phone number",
                style: StylesText.phone,
              )
            ],
          )),
    );
  }
}
