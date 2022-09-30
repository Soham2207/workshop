import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 16.0, top: 10.0),
          decoration: BoxDecoration(
              border: Border.all(width: 2.0),
              shape: BoxShape.rectangle,
              color: Color(0xffFBC70C),
              borderRadius: BorderRadius.circular(10.0)),
          height: 10.0,
          width: 10.0,
          child: IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.arrowLeft),
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
          margin: const EdgeInsets.only(right: 15.0),
          alignment: Alignment.center,
          child: Text('Create an account',
              style: GoogleFonts.robotoSlab(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/profile_pic.jpg'),
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                ),
              ),
              FormTextField(
                hintText: 'Username',
                inputType: TextInputType.name,
              ),
              FormTextField(
                hintText: 'Email Adress',
                inputType: TextInputType.emailAddress,
              ),
              FormTextField(
                hintText: 'Phone number',
                inputType: TextInputType.phone,
              ),
              FormTextField(
                hintText: 'Password',
                obscureText: true,
                inputType: TextInputType.visiblePassword,
              ),
              FormTextField(
                hintText: 'Re-enter Password',
                obscureText: true,
                inputType: TextInputType.visiblePassword,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffFBC70C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 5.0,
                        shadowColor: Colors.grey,
                        padding: EdgeInsets.symmetric(
                            horizontal: 105.0, vertical: 25.0)),
                    child: Text('Create an account',
                        style: GoogleFonts.robotoSlab(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'By Continuing, you accept our ',
                      style: GoogleFonts.robotoSlab(
                        color: Color(0xffbebebe),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Terms Conditions',
                      style: GoogleFonts.robotoSlab(
                        color: Color(0xffFBC70C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'and ',
                    style: GoogleFonts.robotoSlab(
                      color: Color(0xffbebebe),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Privacy Policy',
                    style: GoogleFonts.robotoSlab(
                      color: Color(0xffFBC70C),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FormTextField extends StatelessWidget {
  FormTextField(
      {required this.hintText,
      this.obscureText = false,
      required this.inputType});
  String hintText;
  bool obscureText;
  TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.all(10.0),
      child: TextField(
        keyboardType: inputType,
        obscureText: obscureText,
        decoration: InputDecoration(
            // suffixIcon: Icon(
            //   FontAwesomeIcons.check,
            //   color: Colors.greenAccent,
            // ),
            labelText: hintText,
            labelStyle: GoogleFonts.robotoSlab(
              color: Color(0xffbebebe),
              fontWeight: FontWeight.w600,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide:
                    const BorderSide(width: 3.0, color: Color(0xffBEBEBE))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide:
                    const BorderSide(width: 3.0, color: Color(0xffFBC70C)))),
      ),
    );
  }
}
