import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnify_task_otp/common_components/my_button.dart';
import 'package:learnify_task_otp/common_components/textfield_OTP.dart';

class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'OTP Verify',
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
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 30),
                    const Center(
                      child: Text(
                        'OTP Sent to',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black54),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Center(
                      child: Text(
                        '+91 12345678999',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextfieldOTP(first: true, last: false),
                        TextfieldOTP(first: false, last: false),
                        TextfieldOTP(first: false, last: false),
                        TextfieldOTP(first: false, last: true),
                      ],
                    ),
                    const SizedBox(height: 40),
                    MyButton(
                      buttonName: 'Verify OTP',
                      onButtonPressed: () {
                        Get.snackbar(
                          'Your details has been submitted',
                          '',
                          duration: const Duration(seconds: 4),
                        );
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
