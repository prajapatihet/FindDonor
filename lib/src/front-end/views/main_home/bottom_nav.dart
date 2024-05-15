import 'package:code_cubicle/src/front-end/views/home_pages/camps/camp.dart';
import 'package:code_cubicle/src/front-end/views/home_pages/home/home.dart';
import 'package:code_cubicle/src/front-end/views/home_pages/profile/profile.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screen = [
    const HomePage(),
    const EventsPage(),
    const ProfilePage(),
  ];
}
