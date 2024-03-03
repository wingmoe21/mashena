import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconsPlusCrFr,
      activeIcon: ImageConstant.imgIconsPlusCrFr,
      type: BottomBarEnum.Iconspluscrfr,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserGray500,
      activeIcon: ImageConstant.imgUserGray500,
      type: BottomBarEnum.Usergray500,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      type: BottomBarEnum.Lock,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(
          32.h,
        ),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo9000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              58,
              26,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.green400,
            ),
            activeIcon: SizedBox(
              height: 29.adaptSize,
              width: 29.adaptSize,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.gray500,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      right: 5.h,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        left: 21.h,
                        bottom: 21.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.red400,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  User,
  Iconspluscrfr,
  Usergray500,
  Lock,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
