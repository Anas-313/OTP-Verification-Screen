import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:learnify_task_otp/screens/otp_verify_screen.dart';
import 'package:learnify_task_otp/common_components/my_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 90),
              Container(
                child: Image(
                  image: const AssetImage(
                    'assets/images/happy_student.jpg',
                  ),
                  width: MediaQuery.of(context).size.width * .8,
                  color: Colors.red.shade900,
                  colorBlendMode: BlendMode.hue,
                ),
              ),
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IntlPhoneField(
                      showCountryFlag: false,
                      initialCountryCode: 'IN',
                      flagsButtonPadding: const EdgeInsets.all(8),
                      dropdownIconPosition: IconPosition.trailing,
                      dropdownTextStyle: const TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        counterText: '',
                        filled: true,
                        fillColor: Colors.brown.shade50,
                        label: const Text(
                          'Phone Number',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    MyButton(
                      buttonName: 'Get OTP',
                      onButtonPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpVerifyScreen()));
                        // Get.to(OtpVerifyScreen());
                      },
                    ),
                    const SizedBox(height: 25),
                    const Center(
                      child: Text(
                        'By signing up you agree with our Terms and conditions ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
