import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_c/app/routes/app_pages.dart';

import '../controllers/peminjaman_controller.dart';

  class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookView'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Get.toNamed(Routes.ADD_PEMINJAMAN),child: Icon(Icons.add),
      ),

      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${state[index].book?.judul}"),
            subtitle: Text("Penulis ${state[index].book?.penulis}\n${state[index].book?.penerbit} - ${state[index].book?.tahunTerbit} \n ${state[index].tanggalPinjam} sampai ${state[index].tanggalKembali}"),
            trailing: Text("${state[index].status}") ,
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      )),
    );
  }
}
