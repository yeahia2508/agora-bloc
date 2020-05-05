import 'package:agorabloc/app/lifecycle_manager.dart';
import 'package:agorabloc/common/constant/env.dart';
import 'package:agorabloc/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({Key key, @required this.env}) : super(key: key);
  final Env env;
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return LifeCycleManager(
      child: MaterialApp(
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          S.delegate
        ],
        locale: const Locale('en'),
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
