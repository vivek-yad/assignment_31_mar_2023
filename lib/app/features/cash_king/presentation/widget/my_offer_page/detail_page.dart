import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/value/app_assets.dart';
import '../../../../../core/value/app_colors.dart';
import '../../../../../core/value/app_diemen.dart';
import '../../../../../core/value/app_strings.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              appBar(),
              Positioned(
                top: AppDimen.unitHeight * 50,
                child: offerDetailContainer(),
              )
            ],
          ),
        ),
      ),
    );
  }
  appBar() {
    return Container(
      height: AppDimen.height,
      width: AppDimen.width,
      decoration: const BoxDecoration(color: AppColors.appLinearGradient1),
      child: Padding(
        padding: EdgeInsets.only(
          top: AppDimen.height * 0.04,
          right: AppDimen.height * 0.02,
          //left: AppDimen.height * 0.01,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SvgPicture.asset(AppAssets.backArrow)),
            const Expanded(
              flex: 4,
              child: Text(
                "Offer detail",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.appWhiteColor,
                    fontFamily: "DM Sans",
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
  offerDetailContainer() {
    return Container(
      height: AppDimen.height,
      width: AppDimen.width,
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor,
        borderRadius: BorderRadius.circular(AppDimen.unitHeight * 10),
      ),
     child: detailColumn(),
    );
  }
  detailColumn() {
    return Column(
      children: [
        workStationBanner(),
        Container(
          height: AppDimen.unitHeight * 1,
          width: AppDimen.width * 0.85,
          color: Colors.grey.withOpacity(0.5),
        ),
        SizedBox(
          height: AppDimen.unitHeight * 4,
        ),
       stepText(),
        installApplicationContainer()
      ],
    );
  }
  stepText() {
    return Row(
      children: [
        Text(
          AppStrings.step,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.appBlackColor,
              fontFamily: "DM Sans",
              // decoration: decoration,
              fontSize: AppDimen.unitHeight * 12),
        ),
        Text(
          "(1/4)",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.appBlackColor,
              fontFamily: "DM Sans",
              // decoration: decoration,
              fontSize: AppDimen.unitHeight * 10),
        ),
      ],
    );
  }
  workStationBanner() {
    return Container(
      height: AppDimen.height * 0.18,
      width: AppDimen.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Image.asset(AppAssets.image3)),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.workstation,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.appBlackColor,
                      fontFamily: "DM Sans",
                      // decoration: decoration,
                      fontSize: AppDimen.unitHeight * 12),
                ),
                const Text(AppStrings.offerWorkStationTitle),
                SizedBox(
                  height: AppDimen.unitHeight * 10,
                 child: ratingStar(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  ratingStar() {
    return ListView.builder(
      itemBuilder: (context, index) {
        bool isTrue = index == 4;
        return isTrue != true
            ? SvgPicture.asset(
          AppAssets.appRatingStar,
          color: AppColors.appRectangleColor5,
        )
            : SvgPicture.asset(
          AppAssets.appRatingStar,
          color: Colors.grey,
        );
      },
      itemCount: 5,
    );
  }
  installApplicationContainer() {
    return Container(
      height: AppDimen.height * 0.06,
      width: AppDimen.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimen.unitHeight * 8),
        border: Border.all(
            width: AppDimen.unitWidth * 1, color: AppColors.appRectangleColor1),
      ),
      child: installCancelRow(),
    );
  }
  installCancelRow() {
    return Row(
      children: [SvgPicture.asset(AppAssets.appVector)],
    );
  }
}
