import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/voter_list_screen_controller.dart';

class VoterListScreenView extends GetView<VoterListScreenController> {
  const VoterListScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VoterListScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VoterListScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
