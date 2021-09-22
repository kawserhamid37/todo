import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  //-------------------------------------
  final _formkey = GlobalKey<FormState>();
  final _email ='';
  final _password = '';
  //-------------------------------------
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(children: [
        Container(
          child:Form(
            key: _formkey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              key: ValueKey('email'),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                  borderSide: new BorderSide()
                ),
                labelText: 'Enter Email',
                labelStyle: GoogleFonts.roboto()
              ),
            ),
          ],),),
        )
      ],),
    );
  }
}
