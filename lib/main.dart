import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qscannv/provider/ui_provider.dart';
import 'package:qscannv/router/app_router.dart';
import 'package:qscannv/theme/App_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRout.initialRoute,
        routes: AppRout.getAppRout(),
        onGenerateRoute: AppRout.onGenerateRoute,
        theme: AppTheme.darkTheme,
      ),
    );
  }
}
