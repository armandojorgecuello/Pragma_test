import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pragma/generated/l10n.dart';
import 'package:pragma/ui/screen/home_screen/home_screen.dart';
import 'package:pragma/ui/screen/onboarding_page/on_boarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  ProviderScope(
      child:  MaterialApp(
        title: 'Material App',
        home:  OnBoardingPage(),
        localizationsDelegates: const [
          I18n.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales:  I18n.delegate.supportedLocales,
      ),
    );
  }
}