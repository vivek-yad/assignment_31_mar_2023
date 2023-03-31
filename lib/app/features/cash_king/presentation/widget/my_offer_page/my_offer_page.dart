import 'package:assignment/app/core/value/app_assets.dart';
import 'package:assignment/app/core/value/app_colors.dart';
import 'package:assignment/app/core/value/app_diemen.dart';
import 'package:assignment/app/core/value/app_strings.dart';
import 'package:assignment/app/features/cash_king/data/model/dummy_task_model/dummy_task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../controller/dummy_and_detail.dart';
import 'offer_detail_page.dart';

class MyOfferPage extends StatelessWidget {
  MyOfferPage({Key? key}) : super(key: key);
  DummyDetailAndTaskController detailAndTaskController =
      Get.find<DummyDetailAndTaskController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DummyDetailAndTaskController>(
      builder: (ctrl) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  menuBarContainer(),
                  Positioned(
                    top: AppDimen.height * 0.18,
                    child: offerListContainer(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  menuBarContainer() {
    return Container(
      height: AppDimen.height,
      width: AppDimen.width,
      decoration: const BoxDecoration(color: AppColors.appLinearGradient1),
      child: Padding(
        padding: EdgeInsets.only(
          top: AppDimen.height * 0.06,
          right: AppDimen.height * 0.02,
        ),
        child: menuBarDetail(),
      ),
    );
  }

  menuBarDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: menuBarAndUserName(),
        ),
        Expanded(
          flex: 1,
          child: wallet(),
        )
      ],
    );
  }

  menuBarAndUserName() {
    return Row(
      children: [
        Expanded(child: SvgPicture.asset(AppAssets.appManuBar)),
        Expanded(
          flex: 3,
          child: Text(
            "Hii Subham",
            style: TextStyle(
                color: AppColors.appWhiteColor,
                fontFamily: "Dan Sans",
                fontSize: AppDimen.unitHeight * 12,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  wallet() {
    return Container(
      height: AppDimen.height * 0.04,
      width: AppDimen.unitWidth * 0.02,
      decoration: BoxDecoration(
          color: AppColors.appWhiteColor,
          borderRadius: BorderRadius.circular(AppDimen.unitHeight * 10),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: const Offset(
                2,
                3,
              ),
              color: AppColors.appBlackColor.withOpacity(0.5),
            ),
          ]),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                SvgPicture.asset(
                  AppAssets.appCircle,
                  width: AppDimen.width * 0.025,
                  height: AppDimen.height * 0.025,
                ),
                SvgPicture.asset(
                  AppAssets.appWallet,
                  width: AppDimen.width * 0.025,
                  height: AppDimen.height * 0.025,
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Text("Rs 242"),
          ),
        ],
      ),
    );
  }

  offerListContainer() {
    return Container(
      height: AppDimen.height,
      width: AppDimen.width,
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor.withOpacity(0.8),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppDimen.unitHeight * 10),
          topLeft: Radius.circular(AppDimen.unitHeight * 10),
        ),
      ),
      child: Column(
        children: [
          listBar(),
          SizedBox(
            height: AppDimen.unitHeight * 10,
          ),
          titleBanner(),
          SizedBox(
            height: AppDimen.unitHeight * 10,
          ),
          trendingOffer(),
          moreOffer()
        ],
      ),
    );
  }

  listBar() {
    return Container(
      height: AppDimen.height * 0.08,
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor,
        borderRadius:
            BorderRadius.all(Radius.circular(AppDimen.unitHeight * 10)),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: offerGiftUpcomingBar(
                  title: AppStrings.allOffer, icon: AppAssets.appAllOffer),
            ),
            Expanded(
              child: offerGiftUpcomingBar(
                  title: AppStrings.gifts, icon: AppAssets.appGift),
            ),
            Expanded(
              child: offerGiftUpcomingBar(
                  title: AppStrings.upcoming, icon: AppAssets.appUpcoming),
            ),
            Expanded(
              child: offerGiftUpcomingBar(
                  title: AppStrings.myOffer, icon: AppAssets.appMyOffer),
            )
          ],
        ),
      ),
    );
  }

  offerGiftUpcomingBar({required String title, required String icon}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        SizedBox(
          height: AppDimen.unitHeight * 0.2,
        ),
        Text(title),
      ],
    );
  }

  titleBanner() {
    return Container(
      width: AppDimen.width,
      height: AppDimen.height * 0.04,
      color: AppColors.appTitleBannerColor,
      child: RichText(
        text: const TextSpan(
          text: AppStrings.offerUserEarningTitle1,

          // style: DefaultTextStyle.of(Get.context!).style,
          children: <TextSpan>[
            TextSpan(
                text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' world!'),
          ],
        ),
      ),
    );
  }

  trendingOffer() {
    return Column(
      children: [
        trendingTitle(
            icon: AppAssets.appTrendingOffer, title: AppStrings.trendingOffer),
        trendingList(),
      ],
    );
  }

  trendingTitle({required String icon, required String title}) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            color: AppColors.appRectangleColor4,
          ),
          SizedBox(
            width: AppDimen.unitWidth * 4,
          ),
          Text(title),
        ],
      ),
    );
  }

  trendingList() {
    return SizedBox(
      height: AppDimen.height * 0.26,
      width: AppDimen.width,
      child: ListView.builder(
        itemBuilder: (context, index) {
          final data = detailAndTaskController.dummyTask.value[index];
          return trendingContainer(value: data);
        },
        itemCount: detailAndTaskController.dummyTask.value.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }

  trendingContainer({required DummyTaskModel value}) {
    return Column(
      children: [
        SizedBox(
          height: AppDimen.unitHeight * 0.02,
        ),
        Container(
          height: AppDimen.height * 0.25,
          width: AppDimen.width * 0.45,
          // decoration: BoxDecoration(color: AppColors.appWhiteColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(AppAssets.image1),
                Container(
                  height: AppDimen.height * 0.098,
                  width: AppDimen.width,
                  decoration: BoxDecoration(
                    color: AppColors.appCardColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppDimen.unitHeight * 8),
                      bottomLeft: Radius.circular(AppDimen.unitHeight * 8),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: AppDimen.unitHeight * 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AppDimen.unitHeight * 4,
                        ),
                        Text(
                          "Alto's Odysseyz",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.appWhiteColor,
                              fontFamily: "DM Sans",
                              fontSize: AppDimen.unitHeight * 10),
                        ),
                        SizedBox(
                          height: AppDimen.unitHeight * 2,
                        ),
                        Text(
                          "Get Rs. 230",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.appWhiteColor,
                              fontFamily: "DM Sans",
                              fontSize: AppDimen.unitHeight * 12),
                        ),
                        SizedBox(
                          height: AppDimen.unitHeight * 2,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppAssets.appHotR,
                            ),
                            SizedBox(
                              width: AppDimen.unitWidth * 3,
                            ),
                            Text(
                              "4, 687 users",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.appWhiteColor,
                                  fontFamily: "DM Sans",
                                  fontSize: AppDimen.unitHeight * 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
        // Image.asset(AppAssets.image2),
      ],
    );
  }

  moreOffer() {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.start,
      children: [
        trendingTitle(
            icon: AppAssets.appMoreOffer, title: AppStrings.moreOffer),
        SizedBox(
          height: AppDimen.height * 0.32,
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Get.off(OfferDetailPage());
                },
                child: moreDetail(
                  color: AppColors.appRectangleColor1,
                  image: AppAssets.image3,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(OfferDetailPage());
                },
                child: moreDetail(
                  color: AppColors.appRectangleColor2,
                  image: AppAssets.image4,
                ),
              ),
              InkWell(
                  onTap: () {
                    Get.to(OfferDetailPage());
                  },
                  child: moreDetail(
                    color: AppColors.appRectangleColor3,
                    image: AppAssets.image5,
                  )),
              InkWell(
                onTap: () {
                  Get.to(OfferDetailPage());
                },
                child: moreDetail(
                  color: AppColors.appRectangleColor4,
                  image: AppAssets.image6,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  moreDetail({required Color color, required String image}) {
    return Padding(
      padding: EdgeInsets.all(AppDimen.unitHeight * 4),
      child: Container(
          height: AppDimen.height * 0.08,
          padding: EdgeInsets.all(AppDimen.unitHeight * 4),
          width: AppDimen.width,
          decoration: BoxDecoration(
            color: AppColors.appWhiteColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: color,
            ),
          ),
          child: rowDetailMore(image: image, color: color)),
    );
  }

  rowDetailMore({required String image, required Color color}) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Image.asset(
                image,
                //color: color,
              ),
              SizedBox(
                width: AppDimen.unitWidth * 6,
              ),
              Column(
                children: [
                  Text("Alto's Odysseys"),
                  SizedBox(
                    height: AppDimen.unitHeight * 4,
                  ),
                  Container(
                    height: AppDimen.height * 0.03,
                    width: AppDimen.width * 0.18,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColors.appRectangleColor2,
                      ),
                      borderRadius:
                          BorderRadius.circular(AppDimen.unitHeight * 4),
                    ),
                    child: const Center(
                      child: Text(
                        "Get ₹230",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.appRectangleColor3,
                            fontFamily: "DM Sans",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                SvgPicture.asset(
                  AppAssets.appHotR,
                  color: AppColors.appRectangleColor5,
                ),
                SizedBox(
                  width: AppDimen.unitWidth * 4,
                ),
                const Text(
                  "23,567",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.appRectangleColor5,
                      fontFamily: "DM Sans",
                      fontSize: 12),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
