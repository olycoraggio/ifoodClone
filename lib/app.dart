import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_theme.dart';
import 'package:ifood_flutter_clone/views/content/content_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ifood Flutter Clone Dark',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: ContentPage(),
    );
  }
}
