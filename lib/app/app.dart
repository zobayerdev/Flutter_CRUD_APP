import 'package:crud_flutter/app/app_scroll_behaviour.dart';
import 'package:crud_flutter/themes/appbar_style.dart';
import 'package:crud_flutter/themes/elevated_button_style.dart';
import 'package:crud_flutter/themes/textfield_decoration.dart';
import 'package:crud_flutter/utils/routes.dart';
import 'package:device_preview_minus/device_preview_minus.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homeScreen,
      onGenerateRoute: (routeSettings) => Routes.generateRoute(routeSettings),
      theme: ThemeData(
          appBarTheme: AppbarStyle.getAppbarStyle(),
          scaffoldBackgroundColor: whiteColor,
          inputDecorationTheme: TextFieldDecoration.getTextFieldDecoration(),
          elevatedButtonTheme: ElevatedButtonStyle.getElevatedButtonStyle()),
      scrollBehavior: AppScrollBehaviour(),
    );
  }
}
