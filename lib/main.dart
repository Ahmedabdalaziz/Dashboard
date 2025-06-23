import 'dart:io';

import 'package:dash_board/core/routing/app_router.dart';
import 'package:dash_board/dash_board.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Nabta Dashboard');
    setWindowMinSize(const Size(1700, 900));
    setWindowFrame(const Rect.fromLTWH(100, 100, 900, 600));
  }

  runApp(DashBoard(
    appRouter: AppRouter(),
  ));
}
