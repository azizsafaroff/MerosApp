import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatefulWidget {
  const PinCode({Key? key}) : super(key: key);

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Введите код"),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 50.0,
                width: 200.0,
                child: PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  cursorColor: Colors.black,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.grey.withOpacity(.1),
                    activeColor: Colors.grey.withOpacity(.1),
                    selectedColor: Colors.grey.withOpacity(.1),
                    selectedFillColor: Colors.grey.withOpacity(.1),
                    inactiveColor: Colors.grey.withOpacity(.1),
                    inactiveFillColor: Colors.grey.withOpacity(.1),
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.grey.shade50,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: (context),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text("Мы отправили код подтверждения на"),
              const Text("+998 99 987 65 43"),
              const SizedBox(
                height: 10.0,
              ),
              const Text("Получить новый код можно через 00:59"),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: (){},
                child: const Text(
                  "Не приходит СМС?",
                  style: TextStyle(color: kPrimaryDarkColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
