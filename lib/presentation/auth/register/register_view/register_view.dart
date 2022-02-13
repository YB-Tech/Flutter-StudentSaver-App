import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:studentsaver_app/core/data/firebase/concrete/firebase_auth_manager.dart';
import 'package:studentsaver_app/products/enums/user_state_enum.dart';
import '../../../../models/School.dart';
import '../../../../models/Person.dart';
import '../../widgets/buttons/sign_in_up_button.dart';
import '../../../../products/widgets/text_field.dart';
import '../../widgets/titles/title_info.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  FirebaseAuthManager firebaseAuthManager = FirebaseAuthManager();
  void register() {
    final myUser = Person(
      email: emailController.text,
      password: passwordController.text,
      nickname: nicknameController.text,
      userState: UserState.SAVER,
      school: School(name: "asdasd", point: 4.0),
    );
    firebaseAuthManager.firebaseRegister(myUser);
  }

  @override
  Widget build(BuildContext context) {
    bool? isStudent = false;
    double width = context.width;
    double height = context.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: height * 25 / 100),
        child: SizedBox(
          width: context.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const TitleInfo(title: "Create account", fontSize: 30),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  width * 5 / 100,
                  height * 1 / 100,
                  0,
                  height * 10 / 100,
                ),
                child: Column(
                  children: [
                    MyTextField(
                      controller: nicknameController,
                      hintText: "Nickname",
                      preffixIcon: Icons.person,
                      hasSuffixIcon: false,
                    ),
                    MyTextField(
                      controller: passwordController,
                      hintText: "Password",
                      preffixIcon: Icons.lock,
                      hasSuffixIcon: true,
                    ),
                    MyTextField(
                      controller: emailController,
                      hintText: "E-mail",
                      preffixIcon: Icons.mail,
                      hasSuffixIcon: false,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: width * 5 / 100),
                      margin: EdgeInsets.only(top: height * 0.5 / 100),
                      height: height * 10 / 100,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _schoolDropdownButton(context),
                          Row(
                            children: [
                              Checkbox(
                                value: isStudent,
                                onChanged: (bool? value) {
                                  isStudent = value;
                                },
                              ),
                              Text(
                                'I am Student',
                                style: context.textTheme.headline6?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    signInButtonContainer(width, height),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container signInButtonContainer(double width, double height) {
    return Container(
      padding: EdgeInsets.only(right: width * 5 / 100),
      width: width,
      height: height * 17 / 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SignInUpButton(
            text: "Create",
            callback: () {
              register();
            },
          ),
        ],
      ),
    );
  }

  DropdownButton<String> _schoolDropdownButton(BuildContext context) {
    return DropdownButton<String>(
      value: 'A',
      items: const [
        DropdownMenuItem(value: 'A', child: Text('A SCHOOL')),
        DropdownMenuItem(value: 'B', child: Text('B SCHOOL')),
        DropdownMenuItem(value: 'C', child: Text('C SCHOOL')),
      ],
      style: context.textTheme.headline6,
      onChanged: (data) {},
    );
  }
}
