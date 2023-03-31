import 'package:assignment/app/core/value/app_assets.dart';
import 'package:assignment/app/core/value/app_colors.dart';
import 'package:assignment/app/core/value/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../core/value/app_diemen.dart';
import '../my_offer_page/my_offer_page.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        profileContainer(),
        listOfProfileService(),
        socialMediaList(),
      ],
    );
  }

  profileContainer() {
    return Container(
      height: AppDimen.height * 0.3,
      width: AppDimen.width,
      decoration: const BoxDecoration(color: AppColors.appLinearGradient1),
      child: imageNameEmail(),
    );
  }

  imageNameEmail() {
    return Column(
      children: [
        SizedBox(
          height: AppDimen.unitHeight * 5,
        ),
        CircleAvatar(
          backgroundColor: AppColors.appWhiteColor,
          radius: AppDimen.width * 0.17,
          child: CircleAvatar(
            backgroundColor: AppColors.appLinearGradient1,
            radius: AppDimen.width * 0.16,
            child: Image.asset(AppAssets.userImage),
          ),
        ),
        SizedBox(
          height: AppDimen.unitHeight * 5,
        ),
        Text(
          "Shubham Kumar",
          style: TextStyle(
              color: AppColors.appWhiteColor,
              fontFamily: "Dm Sans",
              fontSize: AppDimen.unitHeight * 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: AppDimen.unitHeight * 5,
        ),
        Text(
          "subham@gmail.com",
          style: TextStyle(
              color: AppColors.appBlackColor,
              fontFamily: "Dm Sans",
              fontSize: AppDimen.unitHeight * 12,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  listOfProfileService() {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to(MyOfferPage());
          },
          child: service(
              icon: AppAssets.appVector,
              title: AppStrings.myOffer,
              icon2: AppAssets.appForwordArrow),
        ),
        service(
            icon: AppAssets.appUsesIcon,
            title: AppStrings.appUses,
            icon2: AppAssets.appForwordArrow),
        service(
            icon: AppAssets.appSupport,
            title: AppStrings.support,
            icon2: AppAssets.appNextClick),
        service(
            icon: AppAssets.appTermAndCondition,
            title: AppStrings.termAndCondition,
            icon2: AppAssets.appNextClick),
        service(
            icon: AppAssets.appPrivacyPolicy,
            title: AppStrings.privacyPolicy,
            icon2: AppAssets.appNextClick),
        service(
            icon: AppAssets.appRateUs,
            title: AppStrings.rateUs,
            icon2: AppAssets.appForwordArrow),
        service(
            icon: AppAssets.appLanguage,
            title: AppStrings.language,
            icon2: AppAssets.appForwordArrow),
        service(
            icon: AppAssets.appLogout,
            title: AppStrings.logout,
            icon2: AppAssets.appForwordArrow),
      ],
    );
  }

  service(
      {required String icon, required String title, required String icon2}) {
    return Container(
      height: AppDimen.height * 0.1,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    icon,
                    height: AppDimen.unitHeight * 15.33,
                    width: AppDimen.unitWidth * 15.33,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    //textAlign: TextAlign.left,
                    style: TextStyle(
                        color: AppColors.appBlackColor,
                        fontFamily: "Dm Sans",
                        fontSize: AppDimen.unitHeight * 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              icon2,
              height: AppDimen.unitHeight * 10,
              width: AppDimen.unitWidth * 10,
            ),
          ),
        ],
      ),
    );
  }

  socialMediaList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: AppDimen.unitHeight * 18,
        ),
        Text(
          AppStrings.followUs,
          style: TextStyle(
              color: AppColors.appBlackColor,
              fontFamily: "Mulish",
              fontSize: AppDimen.unitHeight * 12,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: AppDimen.unitHeight * 10,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: AppDimen.unitHeight * 45, right: AppDimen.unitHeight * 45),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: socialMedia(icon: AppAssets.appFaceB),
              ),
              Expanded(
                flex: 2,
                child: socialMedia(icon: AppAssets.appInsta),
              ),
              Expanded(
                flex: 2,
                child: socialMedia(icon: AppAssets.appYoutube),
              )
            ],
          ),
        ),
        SizedBox(
          height: AppDimen.unitHeight * 14,
        ),
      ],
    );
  }

  socialMedia({required String icon}) {
    return SvgPicture.asset(
      icon,
      // color: AppColors.appColor,
      height: AppDimen.unitHeight * 29,
      width: AppDimen.unitWidth * 29,
    );
  }
}
