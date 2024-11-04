import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constant/app_style.dart';

class DeleteDamageWidget extends StatelessWidget {
  const DeleteDamageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
            icon: const Image(
              width: 20,
              height: 20,
              image: AssetImage(
                "assets/images/close_circle.png",
              ),
            ),
            title: Center(
              child: Text(
                'darmanet.delete_damage'.tr(),
                style: AppStyle.size14Weight600Red,
              ),
            ),
            content: Text(
              'darmanet.are_you_sure_delete_damage'.tr(),
              style: AppStyle.size14Weight600,
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'darmanet.i_am_sure'.tr(),
                      style: AppStyle.size14Weight500White,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'darmanet.no'.tr(),
                      style: AppStyle.size16Weight500neutral,
                    ),
                  ),
                ],
              )
            ]),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
