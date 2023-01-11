import 'package:flutter/material.dart';
import 'package:pabua_activity5_image_picker/view/custom_widget/my_theme.dart';
import 'package:pabua_activity5_image_picker/view/login/components/login_background.dart';
import 'package:pabua_activity5_image_picker/view/login/components/password_field.dart';
import 'package:pabua_activity5_image_picker/view/login/components/textfield_decorator.dart';
import 'package:pabua_activity5_image_picker/view/login/components/userid_text_filed.dart';
import 'package:pabua_activity5_image_picker/view/signup/signup.dart';
import 'package:pabua_activity5_image_picker/view/welcome_page/components/custom_button.dart';


class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController useridController = TextEditingController();

  TextEditingController passController = TextEditingController();

  String userIdErrorText = "This field is required";

  String userIdHintText = "Enter User Id";

  Color userIdHintTextColor = Colors.purple;

  IconData useridTextFieldPrefixIcon = Icons.person;

  Color useridTextFieldPrefixIconColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Login.png"),
              const Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldDecorator(
                      child: UserIdTextField(
                        useridController: useridController,
                        userIdErrorText: userIdErrorText,
                        userIdHintText: userIdHintText,
                        userIdHintTextColor: userIdHintTextColor,
                        useridTextFieldPrefixIcon: useridTextFieldPrefixIcon,
                        useridTextFieldPrefixIconColor:
                            useridTextFieldPrefixIconColor,
                        onUseridValueChange: (value) {
                          //print(value);
                        },
                      ),
                    ),
                    TextFieldDecorator(
                      child: UserPassTextField(
                        userPassController: passController,
                        userPassErrorText: "This field is required",
                        userPassHintText: "Enter Password",
                        userPassHintTextColor: Colors.purple,
                        userPassTextFieldPrefixIcon: Icons.lock,
                        userPassTextFieldPrefixIconColor: Colors.purple,
                        suffixIcon: Icons.visibility_off,
                        suffixIconColor: Colors.purple,
                        onUserPassValueChange: (value) {
                          print("pass value $value");
                        },
                      ),
                    ),
                    CustomButton(
                      buttonColor: MyTheme.loginButtonColor,
                      buttontext: "LOGIN",
                      textColor: Colors.white,
                      handleButtonClick: () {
                        print("Login");
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dont have an account ?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
