

import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingScreen extends StatelessWidget{
  final onboardingPagesList = [
    PageModel(
      widget: Column(
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 45.0),
              child: Image.asset('assets/images/logo.png',
                  color: pageImageColor)),
          Container(
              width: double.infinity,
              child: Text(
                  'Добро пожаловать в My Twitter',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),)
          ),
          Container(
            width: double.infinity,
            child: Text(
              'Здесь вы можете делиться своими мыслями и фотографиями',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
              ),
            ),
          ),
        ],
      ),
    ),
//    PageModel(
//      widget: Column(
//        children: [
//          Image.asset('assets/images/twitter.png', color: pageImageColor),
//          Text('CHANGE AND RISE', style: pageTitleStyle),
//          Text(
//            'Give others access to any file or folder you choose',
//            style: pageInfoStyle,
//          )
//        ],
//      ),
//    ),
//    PageModel(
//      widget: Column(
//        children: [
//          Image.asset('assets/images/instagram.png', color: pageImageColor),
//          Text('EASY ACCESS', style: pageTitleStyle),
//          Text(
//            'Reach your files anytime from any devices anywhere',
//            style: pageInfoStyle,
//          ),
//        ],
//      ),
//    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Onboarding(
        isSkippable: true,
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonRoute: (context) {
            return Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => Container(),
              ),
                  (route) => false,
            );
          },
        ),

        pages: onboardingPagesList,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.line(
            lineDesign: LineDesign(
              lineType: DesignType.line_uniform,
            ),
          ),
        ),
        //-------------Other properties--------------
        //Color background,
        //EdgeInsets pagesContentPadding
        //EdgeInsets titleAndInfoPadding
        //EdgeInsets footerPadding
        //SkipButtonStyle skipButtonStyle
    );
  }


}
