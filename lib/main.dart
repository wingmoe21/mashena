import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

import 'core/app_export.dart';
import 'l10n/support_locale.dart';
import 'presentation/common/core/utils/color_utils.dart';

/// Global navigator key to access the navigator from anywhere in the app.
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(
    ProviderScope(
      // Ensures that the ProviderScope wraps your entire app
      child: MyApp(),
    ),
  );

  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}

/// Provider for the MyAppViewModel.
final myAppProvider = Provider((ref) {
  return MyAppViewModel(ref);
});

/// ViewModel for the main app.
class MyAppViewModel {
  final Ref ref;

  MyAppViewModel(this.ref);

  /// Initializes the app, e.g., initializes services.

  /// Retrieves the JWT token from storage.

  /// Retrieves the localized configuration based on the current locale.
  Future<AppLocalizations> getLocalizedConf() async {
    final lang = ui.window.locale.languageCode;
    final country = ui.window.locale.countryCode;
    return await AppLocalizations.delegate.load(Locale(lang, country));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: ColorUtils.main,
              selectionColor: ColorUtils.main,
              selectionHandleColor: ColorUtils.main,
            ),
            primaryColor: ColorUtils.main,
            bottomSheetTheme:
                BottomSheetThemeData(backgroundColor: ColorUtils.transparent),
          ),
          title: 'seba_s_application1',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashScreanScreen,
          routes: AppRoutes.routes,
          navigatorKey: navigatorKey,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: L10n.support,
        );
      },
    );
  }
}
