import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pabua_activity5_image_picker/controller/signup_controller.dart';
import 'package:pabua_activity5_image_picker/view/custom_widget/my_theme.dart';
import 'package:pabua_activity5_image_picker/view/login/login_page.dart';
import 'package:pabua_activity5_image_picker/view/signup/components/gender_selection.dart';
import 'package:pabua_activity5_image_picker/view/signup/components/signup_background.dart';
import 'package:pabua_activity5_image_picker/view/signup/components/signup_profile_picture.dart';
import 'package:pabua_activity5_image_picker/view/signup/components/signup_textfields.dart';
import 'package:pabua_activity5_image_picker/view/signup/components/signup_textfiled_decorator.dart';
import 'package:pabua_activity5_image_picker/view/welcome_page/components/custom_button.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController confirmPassController = TextEditingController();

  SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBackground(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SignUpProfilePicture(),
              const SizedBox(
                height: 20,
              ),
              SignUpTextFieldDecorator(
                child: SignUpUserIdTextField(
                  useridController: nameController,
                  userIdErrorText: "This field is required",
                  userIdHintText: "Enter Name",
                  userIdHintTextColor: Colors.purple,
                  useridTextFieldPrefixIcon: Icons.person,
                  useridTextFieldPrefixIconColor: Colors.purple,
                  onUseridValueChange: (value) {},
                ),
              ),
              SignUpTextFieldDecorator(
                child: SignUpUserIdTextField(
                  useridController: emailController,
                  userIdErrorText: "This field is required",
                  userIdHintText: "Enter Email Id",
                  userIdHintTextColor: Colors.purple,
                  useridTextFieldPrefixIcon: Icons.email,
                  useridTextFieldPrefixIconColor: Colors.purple,
                  onUseridValueChange: (value) {},
                ),
              ),
              SignUpTextFieldDecorator(
                child: SignUpUserIdTextField(
                  useridController: mobileController,
                  userIdErrorText: "This field is required",
                  userIdHintText: "Enter Mobile",
                  userIdHintTextColor: Colors.purple,
                  useridTextFieldPrefixIcon: Icons.numbers,
                  useridTextFieldPrefixIconColor: Colors.purple,
                  onUseridValueChange: (value) {},
                ),
              ),
              SignUpTextFieldDecorator(
                child: SignUpUserIdTextField(
                  useridController: passController,
                  userIdErrorText: "This field is required",
                  userIdHintText: "Enter Password",
                  userIdHintTextColor: Colors.purple,
                  useridTextFieldPrefixIcon: Icons.lock,
                  useridTextFieldPrefixIconColor: Colors.purple,
                  onUseridValueChange: (value) {},
                ),
              ),
              SignUpTextFieldDecorator(
                child: SignUpUserIdTextField(
                  useridController: confirmPassController,
                  userIdErrorText: "Password not be empty",
                  userIdHintText: "Re-Enter Password",
                  userIdHintTextColor: Colors.purple,
                  useridTextFieldPrefixIcon: Icons.lock,
                  useridTextFieldPrefixIconColor: Colors.purple,
                  onUseridValueChange: (value) {},
                ),
              ),
              SignUpTextFieldDecorator(
                child: GenderSelection(),
              ),
              CustomButton(
                  buttonColor: MyTheme.loginButtonColor,
                  buttontext: "Sign Up",
                  textColor: Colors.white,
                  handleButtonClick: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have account ?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: const Text(
                      "Login Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.purple),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
