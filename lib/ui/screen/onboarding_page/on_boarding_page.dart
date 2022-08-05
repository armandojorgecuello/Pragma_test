import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pragma/generated/l10n.dart';
import 'package:pragma/styles/custom_styles.dart';
import 'package:pragma/ui/screen/home_screen/home_screen.dart';
import 'package:pragma/ui/utils/dimensions.dart';
import 'package:pragma/ui/utils/responsive.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), (){
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (BuildContext context) => const HomePage()
        )
      );
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    final responsive = Responsive(context);
    return SizedBox(
      width: responsive.wp(100),
      height: responsive.hp(100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 8,
            child: Text(
              I18n.of(context).sTitleApp,
              style: Styles.h1.copyWith(fontSize: kDimens40),
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 4,
            child: Lottie.asset(
              'assets/lottie_file/cat_animation.json',
            ),
          )
        ],
      ),
    );
  }

}