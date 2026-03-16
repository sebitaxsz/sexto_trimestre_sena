// ignore

import 'package:flutter/material.dart';
import 'package:proyecto_instructor_diego/ui/views/login/Login.dart';
import 'package:proyecto_instructor_diego/widgets/Header.dart';
import 'package:proyecto_instructor_diego/widgets/Logo.dart';

import '../../../utils/Global.colors.dart';
import '../../../widgets/TextFieldCustom.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // todo:

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [HeaderLogin(), LogoHeader()],
          ),
          Title(),
          TextFields(),
          ButtonSIGNUp(),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    // todo: implement build
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ),
              );
            },
            child: const Text(
              'SIGN IN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          const Text(
            '/',
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey,
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigator.push(
            },
            child: Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: GlobalColors.darkColorH,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    // todo: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
            type: TextInputType.text,
            icon: Icons.person_outlined,
            label: 'User',
            hint: 'Enter user',
          ), // TextFieldCustom
          const SizedBox(
            height: 20,
          ), // SizedBox
          TextFieldCustom(
            type: TextInputType.emailAddress,
            icon: Icons.email_outlined,
            label: 'Email',
            hint: 'Enter email address',
          ), // TextFieldCustom
          const SizedBox(
            height: 20,
          ), // SizedBox
          TextFieldCustom(
            type: TextInputType.phone,
            icon: Icons.phone_outlined,
            label: 'Phone',
            hint: 'Enter phone',
          ), // TextFieldCustom
          const SizedBox(
            height: 20,
          ), // SizedBox
          TextFieldCustom(
            type: TextInputType.visiblePassword,
            icon: Icons.password_outlined,
            label: 'Password',
            hint: 'Enter Password',
            pass: true,
          ), // TextFieldCustom
          const SizedBox(
            height: 20,
          ), // SizedBox
        ],
      ), // Column
    ); // 
  }
}

class ButtonSIGNUp extends StatelessWidget {
  const ButtonSIGNUp({super.key});

  @override
  Widget build(Object context) {
    // todo: implement build
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: GlobalColors.secondaryColorH,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ), // BoxDecoration
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'SIGN UP',
          style: TextStyle(
            height: 3.1,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ), // TextStyle
        ),
      ), // Text // TextButton // Container
    );
  }
}
