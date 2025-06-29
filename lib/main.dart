import 'dart:io';

import 'package:dash_board/cubit/dashboard_cubit.dart';
import 'package:dash_board/services/api_service.dart';
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/ui/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Nabta Dashboard');
    setWindowMinSize(const Size(1700, 900));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nabta Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: ColorsManager.greenWhite,
        appBarTheme: const AppBarTheme(
          color: ColorsManager.mainGreen,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: ColorsManager.moreWhite,
              fontSize: 20,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold),
        ),
        cardTheme: CardThemeData(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
      home: BlocProvider(
        create: (context) =>
            DashboardCubit(ApiService())..fetchDashboardStats(),
        child: const DashboardScreen(),
      ),
    );
  }
}
