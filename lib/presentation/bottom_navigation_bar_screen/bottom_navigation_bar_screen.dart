import 'package:ai_measurement/core/app_export.dart';
import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:ai_measurement/presentation/cam_permission_four_screen/cam_permission_four_screen.dart';
import 'package:ai_measurement/presentation/favorites_one_screen/favorites_one_screen.dart';
import 'package:ai_measurement/presentation/profile_screen/profile_initial_page.dart';
import 'package:ai_measurement/presentation/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../when_clicked_on_fav_product_icon_dialog/add_to_favourite_controller/add_to_favourite_controller.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  RxInt currentIndex = 0.obs;

  // MainScreenController({required this.dataManager});

  final navigatorKeys = List.generate(4, (_) => GlobalKey<NavigatorState>());
  // Paths to custom icons
  final List<String> iconPaths = [
    ImageConstant.imgImage27,
    ImageConstant.imgImage28,
    ImageConstant.imgImage32,
    ImageConstant.imgImage31,
  ];

  final List<String> labels = [
    StringResources.strHome.tr,
    StringResources.strSearch.tr,
    StringResources.strFavourites.tr,
    StringResources.strProfile.tr,
  ];
  // final controller = Get.put(MainScreenController());

  BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        // Using IndexedStack to switch between screens based on the current index
        return Stack(
          children: List.generate(navigatorKeys.length, (index) {
            return Offstage(
              offstage: currentIndex.value != index,
              child: Navigator(
                key: navigatorKeys[index],
                initialRoute: '/',
                onGenerateRoute: (RouteSettings settings) {
                  // Use GetX bindings to initialize the controllers for each screen
                  switch (index) {
                    case 0:
                      return GetPageRoute(
                        page: () => CamPermissionFourScreen(),
                      );
                    case 1:
                      return GetPageRoute(
                        page: () => SearchScreen(),
                      );
                    case 2:
                      return GetPageRoute(
                        page: () => FavoritesOneScreen(),
                      );
                    case 3:
                      return GetPageRoute(
                        page: () => ProfileInitialPage(),
                      );
                    default:
                      return GetPageRoute(
                          page: () => CamPermissionFourScreen());
                  }
                },
              ),
            );
          }),
        );
      }),
      bottomNavigationBar: Obx(() {
        return Container(
          decoration: BoxDecoration(
            color: AppDecoration.fillBlueGray.color,
            // borderRadius: const BorderRadius.only(
            //   topLeft: Radius.circular(20),
            //   topRight: Radius.circular(20),
            // ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // Keeps icons fixed in place
            currentIndex: currentIndex.value,
            backgroundColor: Colors.transparent,
            selectedItemColor: appTheme.black900,
            unselectedItemColor: appTheme.whiteA700,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              currentIndex.value = index;
              if (index == 2) {
                // If Favorites tab index is 2
                Get.find<AddToFavouriteController>().loadCollections(context);
              }
            },
            items: List.generate(iconPaths.length, (index) {
              final isSelected = currentIndex.value == index;
              return BottomNavigationBarItem(
                icon: isSelected
                    ? Container(
                        padding: EdgeInsets.all(8.h),
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.whiteA700.withOpacity(0.25),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  4,
                                ),
                              )
                            ]),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              appTheme.black900, BlendMode.srcIn),
                          child: Column(
                            children: [
                              Image.asset(
                                iconPaths[index],
                                height: 20.h,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                labels[index],
                                style: theme.textTheme.bodySmall,
                              )
                            ],
                          ),
                        ),
                      )
                    : ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            appTheme.whiteA700, BlendMode.srcIn),
                        child: Column(
                          children: [
                            Image.asset(
                              iconPaths[index],
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              labels[index],
                              style: theme.textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                label: '',
              );
            }),
          ),
        );
      }),
    );
  }
}
