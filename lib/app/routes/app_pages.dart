import 'package:get/get.dart';

import '../modules/election_screen/bindings/election_screen_binding.dart';
import '../modules/election_screen/views/election_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/voter_list_screen/bindings/voter_list_screen_binding.dart';
import '../modules/voter_list_screen/views/voter_list_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ELECTION_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.VOTER_LIST_SCREEN,
      page: () => const VoterListScreenView(),
      binding: VoterListScreenBinding(),
    ),
    GetPage(
      name: _Paths.ELECTION_SCREEN,
      page: () => const ElectionScreenView(),
      binding: ElectionScreenBinding(),
    ),
  ];
}
