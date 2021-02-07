import 'package:couseonlineapp_flutter/constants.dart';
import 'package:couseonlineapp_flutter/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/icons/menu.svg"),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/user.jpg",
                    width: 30,
                    height: 30,
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Text("Hey JARNBOY,", style: kHeadingextStyle),
            Text("Find a course you want to learn.",
                style: kSubheadingextStyle),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/search.svg"),
                  SizedBox(width: 20),
                  Text(
                    "Search for Anything your course",
                    style: TextStyle(fontSize: 18, color: Color(0xFFA0A5BD)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Category", style: kTitleTextStyle),
                Text("See all",
                    style: kSubtitleTextSyule.copyWith(color: kBlueColor))
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    height: index.isEven ? 200 : 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage(categories[index].image),
                            fit: BoxFit.fill)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          categories[index].name,
                          style: kTitleTextStyle,
                        ),
                        Text(
                          '${categories[index].numOfCourse} Courses',
                          style: TextStyle(color: kTextColor.withOpacity(.5)),
                        )
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
