import 'package:flutter/material.dart';
import 'package:pas_mobile/controller/login_page_controller.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/components/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginPageController controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: CustomTextfield(
                  myHint: "input username",
                  txtController: controller.txtUsername,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: CustomTextfield(
                  myHint: "input password",
                  txtController: controller.txtPassword,
                ),
              ),
              Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : OutlinedButton(
                        onPressed: () {
                          controller.Login();
                        },
                        child: Text("login"),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
