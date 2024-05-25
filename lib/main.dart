import 'package:crud_flutter/app/app.dart';
import 'package:flutter/material.dart';
import 'package:device_preview_minus/device_preview_minus.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (BuildContext context) => const CrudApp()));
}
