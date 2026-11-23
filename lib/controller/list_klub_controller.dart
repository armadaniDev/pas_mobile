import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile/models/team_model.dart';

class ListKlubController extends GetxController {
  var isLoading = false.obs;
  //var klubList = <PremierLeagueModel>[].obs;
  var listKlub = Rxn<PremierLeagueModel>();

  @override
  void onInit() {
    super.onInit();
    load();
  }

  void load() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(" https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League");
      final response = await http.get(url);

      if (response.statusCode == 200) {
        listKlub.value = premierLeagueModelFromJson(response.body);
      } else {
        Get.snackbar("Gagal", "Cek koneksi internet (${response.statusCode})");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
