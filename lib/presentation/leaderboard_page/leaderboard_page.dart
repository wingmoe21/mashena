import 'package:flutter/material.dart';
import 'package:seba_s_application1/core/app_export.dart';

import 'widgets/content_item_widget.dart';

// ignore_for_file: must_be_immutable
class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({Key? key})
      : super(
          key: key,
        );

  @override
  LeaderboardPageState createState() => LeaderboardPageState();
}

class LeaderboardPageState extends State<LeaderboardPage>
    with AutomaticKeepAliveClientMixin<LeaderboardPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGreen600,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildContent(context),
              _buildContent1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineGray,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return ContentItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContent1(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 6.v,
        );
      },
      itemCount: 7,
      itemBuilder: (context, index) {
        return ContentItemWidget();
      },
    );
  }

  /// Common widget
  Widget _buildEleven(
    BuildContext context, {
    required String zero,
    required String emoji,
  }) {
    return SizedBox(
      height: 27.v,
      width: 14.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              zero,
              style: CustomTextStyles.bodySmallGray500.copyWith(
                color: appTheme.gray50,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              emoji,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildText(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray800,
          ),
        ),
        Text(
          description,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray500,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildText1(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return SizedBox(
      height: 40.v,
      width: 48.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              description,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
