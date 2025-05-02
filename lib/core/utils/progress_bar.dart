import 'package:ai_measurement/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressBar {
  static void showProgressBarApi(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
        child: Container(
          width: 150.0,
          height: 130.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),
              CircularProgressIndicator(
                color: Colors.red,
              ),
              SizedBox(
                height: 30,
              ),
              Text('Loading', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }

  static void hideProgressBar() {
    Get.back();
  }

  static void showExitDiloag(Function()? onPressed, text) {
    Get.generalDialog(
      transitionDuration: const Duration(milliseconds: 500),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        var curve = Curves.fastLinearToSlowEaseIn.transform(animation.value);
        return FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            reverseCurve: Curves.easeInSine,
            curve: Curves.easeInSine,
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              height: Get.height * 0.2,
              width: Get.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(text,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: Get.width * 0.1,
                    children: [
                      SizedBox(
                        width: Get.width * 0.2,
                        child: CustomElevatedButton(
                          text: 'No',
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.2,
                        child: CustomElevatedButton(
                          text: 'Yes',
                          // color: Colors.orange,
                          onPressed: onPressed,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return const SizedBox();
      },
    );
  }

  /// get progressbar
  static Widget getProgressBar(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
