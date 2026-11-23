import 'package:pas_mobile/components/custom_section_card.dart';
import 'package:pas_mobile/controller/detail_makanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.makanan.namaMakanan)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CustomSectionCard(
            title: controller.makanan.namaMakanan,
            icon: Icons.restaurant,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(controller.makanan.gambarMakanan),
                        fit: BoxFit.cover,
                        onError: (exception, stackTrace) {},
                      ),
                    ),
                  ),
                ),
                Text(
                  "Rp ${controller.makanan.hargaMakanan}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          CustomSectionCard(
            title: "Deskripsi",
            icon: Icons.description_outlined,
            child: Text(
              controller.makanan.deskripsiMakanan,
              style: const TextStyle(height: 1.5),
            ),
          ),
          CustomSectionCard(
            title: "Transaksi Pembelian",
            icon: Icons.shopping_cart_outlined,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 12,
              children: [
                TextField(
                  controller: controller.qtyController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Jumlah Makanan",
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.hitungBayar();
                  },
                  child: const Text("Bayar"),
                ),
                const Divider(),
                Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text("Subtotal: Rp ${controller.subtotal.value.toInt()}"),
                      Text("PPN (5%): Rp ${controller.ppn.value.toInt()}"),
                      const SizedBox(height: 4),
                      Text(
                        "Total Bayar: Rp ${controller.totalBayar.value.toInt()}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
