//このプロジェクトは次のページを参考にして作られた。
//https://flutter.dev/docs/development/accessibility-and-localization/internationalization

//    If your app might be deployed to users who speak another language
// then you’ll need to internationalize it. That means you need
// to write the app in a way that makes it possible to localize values
// like text and layouts for each language or locale that the app supports.
// Flutter provides widgets and classes that help with internationalization
// and the Flutter libraries themselves are internationalized.

// Setting up an internation­alized app: the Flutter_localizations package
// By default, Flutter only provides US English localizations.
// To add support for other languages, an application must specify additional
// MaterialApp (or CupertinoApp) properties, and include a package called
// flutter_localizations. As of November 2020, this package supports 78 languages.

// iOSの対応にはさらなる変更が必要だが試すことができないのでトロイ頼んだｗ
// 下のURLに書いてある通りにすればできるはずやｗｗ
// https://flutter.dev/docs/development/accessibility-and-localization/internationalization#localizing-for-ios-updating-the-ios-app-bundle

import 'package:flutter/material.dart';
import 'package:practice_languages/l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.helloWorld,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
