import 'package:get/get.dart';
import 'package:pas_mobile/models/makanan_model.dart';

class ListMakananController extends GetxController {
  RxList<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: 'Nasi Goreng Spesial',
      hargaMakanan: '25.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjS3TcRXmtkqWWwxdCkrsLw-YPh-u4io8UG1NkcJgyA&s=10',
      deskripsiMakanan: 'Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk',
    ),
    MakananModel(
      namaMakanan: 'Ayam Bakar Madu',
      hargaMakanan: '30.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhA_OgMFS5CCUkFJtf822dypeDjhXEDCHBAWjIcDz69g&s=10',
      deskripsiMakanan: 'Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.',
    ),
    MakananModel(
      namaMakanan: 'Sate Ayam Madura',
      hargaMakanan: '28.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1dtVSF1iAYDWAaE-GqCdFQGRllA6teHyH9Zp3TRdbUg&s=10',
      deskripsiMakanan: '10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.',
    ),
    MakananModel(
      namaMakanan: 'Mie Ayam Bakso',
      hargaMakanan: '20.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Nwy9f3_BASZPv_VphngKEFDzrb4GYj1I3IMTMrU4fg&s=10',
      deskripsiMakanan: 'Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.',
    ),
    MakananModel(
      namaMakanan: 'Es Teh Manis Jumbo',
      hargaMakanan: '8.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Nwy9f3_BASZPv_VphngKEFDzrb4GYj1I3IMTMrU4fg&s=10',
      deskripsiMakanan:
          'Minuman teh melati segar dengan gula asli dan es batu kristal.',
    ),
  ].obs;
}
