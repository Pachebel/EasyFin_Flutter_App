import 'dart:convert';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:easyfin_v2/Pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import '/repositories/user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  User user = User("", "");

  var url = Uri.parse('http://localhost:8080/login');

  Future save() async {
    final body = jsonEncode({'email': user.email, 'senha': user.senha});

    var res = await http.post(url, body: body, headers: {
      'Content-type': 'application/json',
    });

    //print (res.headers);

    if (res.statusCode == 200) {
      //print(res.statusCode);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const MyDashboard()));
    } else {
      const snackBar = SnackBar(
          content: Text("Opa deu ruim parsa"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red);
      //print(res.statusCode);

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  String? email;
  String? senha;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        key: _formkey,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 20),
                  child: Text(
                    'Opa!',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),

                ///texto

                const SizedBox(
                  height: 100,
                  width: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    onSaved: (onSavedVal) {
                      var cryptomail = utf8.encode(onSavedVal!);
                      email = cryptomail as String?;
                    },
                    controller: TextEditingController(text: user.email),
                    onChanged: (val) {
                      user.email = val;
                    },
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#666a7b"),
                          ),
                        ),
                        focusedBorder: Theme.of(context)
                            .inputDecorationTheme
                            .focusedBorder,
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: HexColor("#666a7b"),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                ),

                ///Username field

                const SizedBox(
                  height: 70,
                ),

                ///blankspace

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    onEditingComplete: save,
                    onSaved: (onSavedVal) {
                      senha = onSavedVal;
                    },
                    controller: TextEditingController(text: user.senha),
                    onChanged: (val) {
                      user.senha = val;
                    },
                    style: Theme.of(context).textTheme.bodyText1,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          color: HexColor("#05c46b"),
                          icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).iconTheme.color),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: HexColor("#666a7b"),
                        )),
                        focusedBorder: Theme.of(context)
                            .inputDecorationTheme
                            .focusedBorder,
                        labelText: 'Password',
                        labelStyle: TextStyle(color: HexColor("#666a7b")),
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                ),

                ///password field

                const SizedBox(
                  height: 20,
                ),

                ///blank space

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              alignment: Alignment.topRight,
                              primary: HexColor("#666a7b")),
                          onPressed: () {},
                          child: const Text('Opa senha?')),
                    ),
                  ],
                ),

                ///tanso?

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    width: 450,
                    child: TextButton(
                      child: const Text('LOGIN'),
                      onPressed: () {
                        save();
                      },
                      style: TextButton.styleFrom(
                        shadowColor: HexColor("#05c46b"),
                        elevation: 20,
                        primary: Theme.of(context).scaffoldBackgroundColor,
                        backgroundColor: HexColor("#05c46b"),
                      ),
                    ),
                  ),
                ),

                ///LOGIN button

                const SizedBox(
                  height: 30,
                ),

                ///blank space

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          alignment: Alignment.topRight,
                          primary: HexColor("#666a7b")),
                      onPressed: () {},
                      child: const Text('Problemas ao acessar?')),
                ),

                ///criar acc

                EasyDynamicThemeSwitch()

                ///dark mode switch
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
