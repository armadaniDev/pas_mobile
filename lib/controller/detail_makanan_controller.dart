import 'package:pas_mobile/models/makanan_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late MakananModel makanan;
  final TextEditingController qtyController = TextEditingController();

  var subtotal = 0.0.obs;
  var ppn = 0.0.obs;
  var totalBayar = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }

  void hitungBayar() {
    int qty = int.tryParse(qtyController.text) ?? 0;

    if (qty <= 0) {
      Get.snackbar("Peringatan", "Jumlah minimal 1");
      return;
    }

    subtotal.value = (makanan.hargaMakanan * qty) as double;
    ppn.value = subtotal.value * 0.05;
    totalBayar.value = subtotal.value + ppn.value;
  }

  @override
  void onClose() {
    qtyController.dispose();
    super.onClose();
  }
}
