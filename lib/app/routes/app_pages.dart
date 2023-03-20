import 'package:get/get.dart';

import '../modules/create_election/bindings/createElectionBindings.dart';
import '../modules/create_election/views/createElectionView.dart';
import '../modules/election_screen/bindings/election_screen_binding.dart';
import '../modules/election_screen/views/election_screen_view.dart';
import '../modules/election_status/bindings/election_status_binding.dart';
import '../modules/election_status/views/election_status_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/voter_list_screen/bindings/voter_list_screen_binding.dart';
import '../modules/voter_list_screen/views/voter_list_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.VOTER_LIST_SCREEN,
      page: () => VoterListScreenView(),
      binding: VoterListScreenBinding(),
    ),
    GetPage(
      name: _Paths.ELECTION_SCREEN,
      page: () => const ElectionScreenView(),
      binding: ElectionScreenBinding(),
    ),
    GetPage(
      name: _Paths.ELECTION_STATUS,
      page: () => const ElectionStatusView(),
      binding: ElectionStatusBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ELECTION,
      page: () => const CreateElectionView(),
      binding: CreateElectionBinding(),
    ),
  ];
}
