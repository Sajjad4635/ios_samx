import 'dart:io';
import 'dart:ui';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/utils/route_observer.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/feature/main_app/intro/presentaion/intro_screen.dart';
import 'package:ios_samx/feature/main_app/splash/presentaion/splash_screen.dart';
import 'package:ios_samx/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/pages/sso_auth_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/wallet_deposit/wallet_deposit_result.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hive_flutter/adapters.dart';
// import 'package:rudder_sdk_flutter/RudderController.dart';
import 'package:url_strategy/url_strategy.dart';
import 'injection_container.dart';
// import 'package:rudder_sdk_flutter_platform_interface/platform.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  // await FirebaseMessaging.onMessage.listen(
  //   (event) => print("notif ${event}"),
  // );
  // await FirebaseMessaging.instance.getInitialMessage();
  configureDependencies();
  await Hive.initFlutter();
  Box box = await Hive.openBox(Strings.appDBName);
  await dotenv.load(fileName: ".env");
  const systemThemeMode = Brightness.light;
  final CustomTheme themeMode = box.get("theme_mode") != null
      ? (box.get("theme_mode") == "dark" ? DarkMyTheme() : LightMyTheme())
      // Check the platform brightness to determine the default theme mode
      : (systemThemeMode == Brightness.dark ? DarkMyTheme() : LightMyTheme());
  setPathUrlStrategy();
  await EasyLocalization.ensureInitialized();

  // final RudderController rudderClient = RudderController.instance;
  // RudderConfigBuilder builder = RudderConfigBuilder();
  // builder.withDataPlaneUrl("https://analytics.zebline.com");
  // builder.withControlPlaneUrl("https://c.zebline.com");
  // builder.withLogLevel(RudderLogger.VERBOSE);
  // RudderOption options = RudderOption();
  // options.putIntegration("Amplitude", true);
  // final String _writeKey = "2mCagNIkTVEgPBlvAMZsbHQlATl";
  // rudderClient.initialize(_writeKey, config: builder.build(), options: options);
  
  FlavorConfig(
    variables: {
      "baseURL": dotenv.env["BASE_URL"]!,
      "cpLifeURL": dotenv.env["CPLIFE_URL"]!,
      "darmanetURL": dotenv.env["DARMANET_URL"]!,
      "supportOtrsURL": dotenv.env["SUPPORT_OTRS_URL"]!,
      "darmanetSupportUrl": dotenv.env["DARMANET_SUPPORT_URL"]!,
      "minioUrl": dotenv.env["MINIO_URL"]!,
      "walletUrl": dotenv.env["WALLET_URL"]!,
      "unitLinkUrl": dotenv.env["UNITLINKED_URL"]!,
      "samxUrl": dotenv.env["SAMX_URL"]!,
      "version": dotenv.env["VERSION"]!,
      "redirectURL": dotenv.env["REDIRECT_URL"]!,
      "elasticUrl": dotenv.env["ElASTIC_URL"]!,
      "elasticUsername": dotenv.env["ElASTIC_USERNAME"]!,
      "elasticPassword": dotenv.env["ElASTIC_PASSWORD"]!,
      "elasticIndex": dotenv.env["ElASTIC_INDEX"]!,
    },
  );
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('fa'),
        Locale('en'),
      ],
      startLocale: const Locale('fa'),
      path: 'assets/translations',
      saveLocale: true,
      useFallbackTranslations: true,
      fallbackLocale: const Locale('fa'),
      child: ColorThemeProvider(theme: themeMode, darkTheme: themeMode, child: const MyApp()),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        fontFamily: "Encode Sans", //my custom font
      ),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      onGenerateRoute: (settings) {
        if (Uri.base.path == '/receipt') {
          return MaterialPageRoute(
            builder: (context) => WalletDepositResultScreen(
              transactionId: Uri.base.queryParameters["transactionId"].toString(),
            ),
          );
        }
        return null;
      },
      routes: {
        '/receipt': (context) => WalletDepositResultScreen(
              transactionId: Uri.base.queryParameters["transactionId"].toString(),
            ),
        "/splash": (context) => const SplashScreen(),
        "/intro": (context) => const IntroScreen(),
        "/signin": (context) => const SsoAuthScreen(),
        "/dashboard": (context) => const DashboardScreen(),
      },
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      title: "SamX",
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
