import 'package:dash_board/core/routing/app_router.dart';
import 'package:dash_board/core/routing/routing.dart';
import 'package:dash_board/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoard extends StatelessWidget {
  final AppRouter appRouter;

  const DashBoard({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.mainGreen,
          scaffoldBackgroundColor: ColorsManager.white,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: ColorsManager.mainGreen,
            selectionColor: ColorsManager.secondGreen.withOpacity(0.5),
            selectionHandleColor: ColorsManager.mainGreen,
          ),
        ),
        initialRoute: Routing.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
