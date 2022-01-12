import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  final String nextRoute;

  OnboardingScreen({required this.nextRoute});

  @override
  State<StatefulWidget> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  final onboardingPagesList = [
    PageModel(
      widget: Column(
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 45.0),
              child: Image.asset('assets/images/logo.png')),
          Container(
//              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                'Добро пожаловать в My Twitter',
                textAlign: TextAlign.center,
//                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 30),
              )),
          Container(
//            width: double.infinity,
            child: Text(
              'Здесь вы можете делиться своими мыслями и фотографиями',
              textAlign: TextAlign.center,
//              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 45.0),
              child: Image.asset('assets/images/logo.png')),
          Container(
//            width: double.infinity,
            child: Text(
              'Вы можете зарегистрироваться в нашем приложении, указав свой e-mail, имя профиля и пароль.' +
                  'После регистрации, в своем профиле Вы можете загрузить себе аватар или изменить имя профиля',
              textAlign: TextAlign.center,
//              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 45.0),
              child: Image.asset('assets/images/logo.png')),
          Container(
//            width: double.infinity,
            child: Text(
              'Зарегистрированные пользователи могут создать посты, состоящие из текста и фотографий, а также оставлять комментарии и ставить лайки постам других пользователей',
              textAlign: TextAlign.center,
//              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Onboarding(
      isSkippable: false,
      proceedButtonStyle: ProceedButtonStyle(
        proceedButtonRoute: (context) {
          return Navigator.of(context).pushReplacementNamed(widget.nextRoute);
        },
        proceedpButtonText: Text(
          'Вперед',
          style: TextStyle(color: Colors.white),
        ),
        proceedButtonColor: Colors.black,
      ),
      background: Colors.white,
      pages: onboardingPagesList,
      indicator: Indicator(
        indicatorDesign: IndicatorDesign.polygon(
          polygonDesign: PolygonDesign(
            polygon: DesignType.polygon_circle,
          ),

        ),
      ),
    );
  }
}
