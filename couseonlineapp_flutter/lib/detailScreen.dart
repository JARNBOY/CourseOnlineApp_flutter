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
        child: Column(
          children: [
            Padding(
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
                      padding: EdgeInsets.only(
                          left: 10, top: 5, right: 20, bottom: 5),
                      child: Text(
                        "BestSeller".toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Design Thinking",
                    style: kHeadingextStyle,
                  ),
                  SizedBox(height: 16),
                  Row(children: [
                    SvgPicture.asset("assets/icons/person.svg"),
                    SizedBox(width: 5),
                    Text("18K"),
                    SizedBox(width: 20),
                    SvgPicture.asset("assets/icons/star.svg"),
                    SizedBox(width: 5),
                    Text("4.8"),
                  ]),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "\$50 ",
                          style: kHeadingextStyle.copyWith(fontSize: 32)),
                      TextSpan(
                          text: "\$70",
                          style: TextStyle(
                              color: kTextColor.withOpacity(.5),
                              decoration: TextDecoration.lineThrough))
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Course Content", style: kTitleTextStyle),
                      SizedBox(height: 30),
                      CourseContent(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;

  const CourseContent({
    Key key,
    this.number,
    this.duration,
    this.title,
    this.isDone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("01",
            style: kHeadingextStyle.copyWith(
                color: kTextColor.withOpacity(.15), fontSize: 32)),
        SizedBox(width: 20),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "5.35 mins\n",
                style:
                    TextStyle(color: kTextColor.withOpacity(.5), fontSize: 18)),
            TextSpan(
                text: "Welcome to the Course",
                style: kSubtitleTextSyule.copyWith(
                    fontWeight: FontWeight.w600, height: 1.5))
          ]),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 40,
          width: 40,
          decoration: BoxDecoration(shape: BoxShape.circle, color: kGreenColor),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        )
      ],
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
