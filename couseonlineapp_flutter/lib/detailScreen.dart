import 'package:couseonlineapp_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
                image: AssetImage("assets/images/ux_big.png"),
                alignment: Alignment.topRight)),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/arrow-left.svg"),
                  SvgPicture.asset("assets/icons/more-vertical.svg")
                ],
              ),
              SizedBox(height: 30),
              ClipPath(
                clipper: BestSellerClipper(),
                child: Container(
                  color: kBestSellerColor,
                  padding:
                      EdgeInsets.only(left: 10, top: 5, right: 20, bottom: 5),
                  child: Text(
                    "BestSeller".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
