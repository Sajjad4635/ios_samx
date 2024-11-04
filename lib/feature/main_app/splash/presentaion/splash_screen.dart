import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/feature/main_app/splash/domain/usecases/param/get_last_version/get_last_version_param.dart';
import 'package:ios_samx/feature/main_app/splash/presentaion/bloc/bloc/get_last_version_bloc.dart';
import 'package:ios_samx/feature/main_app/splash/presentaion/widgets/version_alert_dialog.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hive/hive.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late GetLastVersionBloc _getLastVersionBloc;

  @override
  void initState() {
    _getLastVersionBloc = sl<GetLastVersionBloc>();
    String version = dotenv.env["VERSION"]!;
    _getLastVersionBloc.add(
      GetLastVersionEvent.getLastVersionEventCalled(
        param: GetLastVersionParam(version: version),
      ),
    );

    super.initState();
  }

  Future<void> showVersiondialog({
    required String versionNo,
    required String versionLog,
    required bool isForce,
  }) async {
    await showDialog(
      context: context,
      builder: (context) => VersionAlertDialog(
        versionNo: versionNo,
        versionLog: versionLog,
        isForce: isForce,
      ),
    );
  }

  Future<void> onSubmitVersionAlert() async {
    Box box = Hive.box(Strings.appDBName);
    DateTime? expirationDateTime = box.get("expire_date_time");
    String? showAds = box.get("showAds");
    DateTime currentTime = DateTime.now();
    bool isExpire = true;

    if (expirationDateTime != null) {
      if (currentTime.isAfter(expirationDateTime)) {
        print("Token has expired.");
        isExpire = true;
      } else {
        print("Token is still valid.");
        isExpire = false;
      }
    } else {
      isExpire = true;
      print("isExpire");
    }

    if (showAds == null) {
      await Navigator.pushReplacementNamed(context, "/intro");
    } else if (isExpire) {
      await Navigator.pushReplacementNamed(context, "/signin");
    } else {
      await Navigator.pushReplacementNamed(context, "/dashboard");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _getLastVersionBloc,
      child: BlocListener<GetLastVersionBloc, GetLastVersionState>(
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (failure) {},
            loadSuccess: (getProfileEntities) async {
              // if (getProfileEntities.versionResponseData.isAppUpToDate ||
              //     getProfileEntities.versionResponseData.lastVersion == null) {
                onSubmitVersionAlert();
              // } else {
              //   await showVersiondialog(
              //     versionNo: getProfileEntities
              //         .versionResponseData.lastVersion!.versionNo,
              //     versionLog: getProfileEntities
              //         .versionResponseData.lastVersion!.changelog,
              //     isForce: getProfileEntities.versionResponseData.lastVersion!
              //         .isThisVersionForceForApp,
              //   );
              // }
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            alignment: Alignment.center,
            child: const Image(
              image: AssetImage("assets/images/logo.png"),
              height: 133,
              width: 188,
            ),
          ),
          bottomSheet: Directionality(
            textDirection: TextDirection.ltr,
            child: Container(
              height: 50,
              color: Colors.white,
              alignment: Alignment.center,
              child: Text(
                "${FlavorConfig.instance.variables["version"]!} نگارش".toPersianDigit(),
                style: AppStyle.size18Weight500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
