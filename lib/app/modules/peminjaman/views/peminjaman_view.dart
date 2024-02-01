import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_c/app/data/model/response_pinjam.dart';

import '../../../routes/app_pages.dart';
import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PeminjamanView'),
          centerTitle: true,
        ),
        body: controller.obx((state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (context, index) {
            DataPinjam dataPinjam = state[index];
            return ListTile(
              title: Text("${dataPinjam.book?.judul}"),
              subtitle: Text("Tanggal Pinjam : ${dataPinjam.tanggalPinjam}"
                  "\nTanggal Pengembalian : ${dataPinjam.tanggalKembali}"),
              trailing: Text('${dataPinjam.status}'),
            );
          },
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey, // Warna garis putus-putus
            thickness: 1, // Ketebalan garis putus-putus
            indent: 16, // Jarak dari kiri
            endIndent: 16, // Jarak dari kanan
          ),
        ),
          onLoading: Center(child: CupertinoActivityIndicator()),
        ),
    );
  }
}