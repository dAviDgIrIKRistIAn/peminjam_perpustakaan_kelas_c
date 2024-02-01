import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/namahalaman_controller.dart';

class NamahalamanView extends GetView<NamahalamanController> {
  const NamahalamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NamahalamanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NamahalamanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
