import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.namaController,
                    decoration: InputDecoration(
                      hintText: "Masukan Nama",
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    // obscureText: true,
                    controller: controller.usernameController,
                    decoration: InputDecoration(
                      hintText: "Masukan Username",
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Username tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    // obscureText: true,
                    controller: controller.telpController,
                    decoration: InputDecoration(
                      hintText: "Masukan no telp",
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "no telp tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    // obscureText: true,
                    controller: controller.alamatController,
                    decoration: InputDecoration(
                      hintText: "Masukan alamat",
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "alamat tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    // obscureText: true,
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                      hintText: "Masukan password",
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "password tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  Obx(() => controller.loading.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                      onPressed: () {
                        controller.regist();
                      },
                      child: Text('Register'))),
                ],
              ))),
    );
  }
}
