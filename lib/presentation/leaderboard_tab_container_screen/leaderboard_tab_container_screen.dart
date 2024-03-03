import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';
import 'package:seba_s_application1/presentation/leaderboard_page/leaderboard_page.dart';
import 'package:seba_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:seba_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:seba_s_application1/widgets/app_bar/custom_app_bar.dart';

class LeaderboardTabContainerScreen extends StatefulWidget {
  const LeaderboardTabContainerScreen({Key? key}) : super(key: key);

  @override
  LeaderboardTabContainerScreenState createState() =>
      LeaderboardTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class LeaderboardTabContainerScreenState
    extends State<LeaderboardTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;
  int _selectedIndex = 0; // Default index
  static List<Widget> _widgetOptions = <Widget>[
    Text('الصفحة الرئيسية'), // Home
    Text('مشينا'), // Leaderboard
    Text('الترتيب'), // Leaderboard
  ];

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            _buildHeader(context),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 689
                      .v, // Assuming v is a unit or method that is defined elsewhere in your code
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      LeaderboardPage(),
                      LeaderboardPage(),
                      LeaderboardPage(),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_walk_rounded),
              label: 'مشينا',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: 'الترتيب',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });

            // Navigate based on the selected index
            switch (index) {
              case 0:
                Navigator.pushNamed(context, AppRoutes.homePage);
                break;
              case 1:
                Navigator.pushNamed(context, AppRoutes.newActivityScreen);
                break;
              case 2:
                Navigator.pushNamed(
                    context, AppRoutes.leaderboardTabContainerScreen);
                break;
              default:
                // Handle unexpected index here, if necessary
                break;
            }
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          SizedBox(
            height: 9.v,
          ),
          CustomAppBar(
              height: 48.v,
              leadingWidth: 72.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowLeftBlack900,
                  margin: EdgeInsets.only(right: 100.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              actions: [
                AppbarTitle(
                    text: "الترتيب",
                    margin: EdgeInsets.only(left: 25.h, top: 3.v, right: 25.h))
              ]),
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
