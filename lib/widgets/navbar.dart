import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/styles/constants.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 60,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sanchit Rastogi',
            style: kBrandTextStyle,
          ),
          Row(
            children: [
              Text(
                'Home',
                style: kOptionTextStyle,
              ),
              SizedBox(width: 20),
              Text(
                'Contact',
                style: kOptionTextStyle,
              ),
              SizedBox(width: 20),
              Text(
                'About',
                style: kOptionTextStyle,
              ),
              SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 60,
      ),
      child: Column(
        children: [
          Text(
            'Sanchit Rastogi',
            style: kBrandTextStyle,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Home',
                style: kOptionTextStyle,
              ),
              Text(
                'Contact',
                style: kOptionTextStyle,
              ),
              Text(
                'About',
                style: kOptionTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
