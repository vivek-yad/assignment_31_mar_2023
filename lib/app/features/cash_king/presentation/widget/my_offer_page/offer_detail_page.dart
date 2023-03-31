// ignore_for_file: must_be_immutable

import 'package:assignment/app/core/value/app_assets.dart';
import 'package:assignment/app/core/value/app_colors.dart';
import 'package:assignment/app/core/value/app_diemen.dart';
import 'package:assignment/app/core/value/app_strings.dart';
import 'package:assignment/app/features/cash_king/presentation/widget/my_offer_page/my_offer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/dummy_and_detail.dart';

class OfferDetailPage extends StatelessWidget {
  OfferDetailPage({Key? key}) : super(key: key);
  DummyDetailAndTaskController detailAndTaskController =
      Get.find<DummyDetailAndTaskController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DummyDetailAndTaskController>(
      builder: ((ctrl) {
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
      }),
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
            Expanded(
              child: InkWell(
                onTap: () {
                  Get.to(MyOfferPage());
                },
                child: SvgPicture.asset(AppAssets.backArrow),
              ),
            ),
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
      child: Padding(
        padding: EdgeInsets.all(AppDimen.unitHeight * 6),
        child: detailColumn(),
      ),
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
        SizedBox(
          height: AppDimen.unitHeight * 10,
        ),
        installApplicationContainer(
          icon: AppAssets.appCheck,
          textTitle: AppStrings.installTitle,
          isCanecelText: true,
          icoCircleColor: AppColors.appWhiteColor,
          iconCircleColor: AppColors.appRectangleColor1,
          textColor: AppColors.appBlackColor,
          textBackgroundColor: AppColors.appRectangleColor1,
          textPriceColor: AppColors.appWhiteColor,
          borderColor: AppColors.appRectangleColor1,
        ),
        SizedBox(
          height: AppDimen.unitHeight * 10,
        ),
        completeContaner(),
        SizedBox(
          height: AppDimen.unitHeight * 10,
        ),
        installApplicationContainer(
          icon: AppAssets.circle,
          textTitle: AppStrings.referFriendWorkStation,
          isCanecelText: false,
          icoCircleColor: Colors.grey,
          iconCircleColor: Colors.grey,
          textColor: AppColors.appBlackColor,
          textBackgroundColor: AppColors.appWhiteColor.withOpacity(0.5),
          textPriceColor: AppColors.appLinearGradient1,
          borderColor: Colors.grey,
        ),
        SizedBox(
          height: AppDimen.unitHeight * 10,
        ),
        installApplicationContainer(
          icon: AppAssets.circle,
          textTitle: AppStrings.withdrawTitle,
          isCanecelText: false,
          icoCircleColor: Colors.grey,
          iconCircleColor: Colors.grey,
          textColor: AppColors.appBlackColor,
          textBackgroundColor: AppColors.appWhiteColor.withOpacity(0.5),
          textPriceColor: AppColors.appLinearGradient1,
          borderColor: Colors.grey,
        ),
        SizedBox(
          height: AppDimen.unitHeight * 40,
        ),
        alreadyPaid(),
        SizedBox(
          height: AppDimen.unitHeight * 10,
        ),
        button()
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

  installApplicationContainer({
    required String icon,
    required Color icoCircleColor,
    required Color textColor,
    required Color textBackgroundColor,
    required Color textPriceColor,
    required Color borderColor,
    required String textTitle,
    required bool isCanecelText,
    required Color iconCircleColor,
  }) {
    return Container(
      height: AppDimen.height * 0.06,
      width: AppDimen.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimen.unitHeight * 8),
        border: Border.all(width: AppDimen.unitWidth * 1, color: borderColor),
      ),
      child: installCancelRow(
          icon: icon,
          icoCircleColor: icoCircleColor,
          textColor: textColor,
          textBackgroundColor: textBackgroundColor,
          textPriceColor: textPriceColor,
          borderColor: borderColor,
          textTitle: textTitle,
          isCanecelText: isCanecelText,
          iconCircleColor: iconCircleColor),
    );
  }

  completeContaner() {
    return Container(
      height: AppDimen.height * 0.23,
      width: AppDimen.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.appRectangleColor5, width: 1),
        borderRadius: BorderRadius.circular(AppDimen.unitHeight*10)
      ),
      child: completeDetail(),
    );
  }

  completeDetail() {
    return Padding(
      padding:  EdgeInsets.all(AppDimen.unitHeight*8),
      child: Column(
        children: [
          SizedBox(
            height: AppDimen.unitHeight * 10,
          ),
          installApplicationContainer(
              icon: AppAssets.appProgress,
              icoCircleColor: AppColors.appWhiteColor,
              textColor: AppColors.appBlackColor,
              textBackgroundColor: AppColors.appRectangleColor5,
              textPriceColor: AppColors.appWhiteColor,
              borderColor: Colors.grey,
              iconCircleColor: AppColors.appRectangleColor5,
              textTitle: AppStrings.completeOffer,
              isCanecelText: false),
          SizedBox(
            height: AppDimen.unitHeight * 10,
          ),
          Text(
            AppStrings.lorenSpanTitle,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.appBlackColor.withOpacity(0.5),
                fontFamily: "DM Sans",
                // decoration: decoration,
                fontSize: AppDimen.unitHeight * 10),
          )
        ],
      ),
    );
  }

  installCancelRow({
    required String icon,
    required Color textPriceColor,
    required Color textBackgroundColor,
    required Color textColor,
    required Color icoCircleColor,
    required Color borderColor,
    required String textTitle,
    required bool isCanecelText,
    required Color iconCircleColor,
  }) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        AppAssets.circle,
                        color: iconCircleColor,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 3,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: SvgPicture.asset(
                          icon,
                          color: icoCircleColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Text(
                  textTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: textColor,
                      fontFamily: "DM Sans",
                      decoration: isCanecelText == true
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      fontSize: AppDimen.unitHeight * 10),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding:  const EdgeInsets.only(right:8.0),
            child: Container(
              height: AppDimen.unitHeight * 20,
              width: AppDimen.unitWidth * 50,
              decoration: BoxDecoration(
                  color: textBackgroundColor,
                  borderRadius: BorderRadius.circular(AppDimen.unitHeight * 10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.4, 0.4),
                        color: Colors.grey.withOpacity(0.5)),
                  ]),
              child: Center(
                child: Text(
                  "₹20",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: textPriceColor,
                      fontFamily: "DM Sans",
                      fontSize: AppDimen.unitHeight * 10),
                ),
              ),
            ),
          ),
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
      scrollDirection: Axis.horizontal,
    );
  }

  alreadyPaid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: SvgPicture.asset(
            AppAssets.appHotR,
            height: AppDimen.unitHeight * 10,
            width: AppDimen.unitWidth * 10,
            color: AppColors.appRectangleColor5,
          ),
        ),
        Expanded(
          flex: 6,
          child: Text(
            AppStrings.alreadyParticipatedTitle,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.appRectangleColor5,
                fontFamily: "DM Sans",
                // decoration: decoration,
                fontSize: AppDimen.unitHeight * 10),
          ),
        )
      ],
    );
  }

  button() {
    return Container(
      height: AppDimen.unitHeight * 30,
      width: AppDimen.width * 0.9,
      decoration: BoxDecoration(
        color: AppColors.appLinearGradient1,
        borderRadius: BorderRadius.circular(AppDimen.unitWidth * 20),
      ),
      child: Center(
        child: Text(
          "Get Rs.220",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.appWhiteColor,
              fontFamily: "DM Sans",
              // decoration: decoration,
              fontSize: AppDimen.unitHeight * 12),
        ),
      ),
    );
  }
}
