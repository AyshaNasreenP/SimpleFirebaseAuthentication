
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:loginfire/login.dart';
class signup1 extends StatefulWidget {
  const signup1({super.key});

  @override
  State<signup1> createState() => _signup1State();
}

class _signup1State extends State<signup1> {
  final _formkey =GlobalKey<FormState>();
  final _passwordController=TextEditingController();
  final _emailController=TextEditingController();
  // final _auth = FirebaseAuth.instance;

  String email = '';
  String password = '';
  bool showSpinner = false;
  final FirebaseAuth _auth=FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      child: Container(
                        //alignment: Alignment.center,
                        //margin: const EdgeInsets.all(80.0),
                          height: 500,
                          //width: 500,
                          decoration: BoxDecoration(
                            // color: Color(0x56dad4d4),
                            // border: Border.all(
                            //     color: Colors.black12
                            // )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                //SizedBox(height: 70,),
                                Text("StreamVerse",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.blueGrey,),
                                ),
                                SizedBox(height: 50,),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: _emailController,
                                    onChanged: (value) {
                                      email = value;
                                    },


                                    decoration:
                                    InputDecoration(

                                      //prefixIcon: Icon(Icons.person),
                                      labelText: "Email",

                                      //hintText: "Create Username",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.white70),),

                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(

                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    //obscureText: true,
                                    controller: _passwordController,
                                    onChanged: (value) {
                                      password = value;
                                    },

                                    decoration:  InputDecoration(
                                      // prefixIcon: Icon(Icons.key),
                                        labelText:"Password",
                                        hintText: "Create Password",
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: Colors.white70),),

                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: Colors.grey, width: 1.0),



                                        )

                                    ),
                                  ),
                                ),

                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: const Size.fromHeight(55),
                                          primary: Colors.blueGrey,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          )
                                      ),
                                      child: Text("Sign up",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                      onPressed: ()
                                      // async
                                      async {
                                        setState(() {
                                          showSpinner = true;
                                        });

                                        try {

                                          await _auth.createUserWithEmailAndPassword(
                                              email: email, password: password);
                                          // ignore: use_build_context_synchronously
                                          // Navigator.push(context,
                                          //     MaterialPageRoute(builder: ((
                                          //         context) => const s())));

                                          setState(() {
                                            showSpinner = false;
                                          });
                                          Get.to(login());
                                        }
                                        catch (e) {
                                          setState(() {
                                            print("$e");
                                            // showSpinner = false;
                                          });
                                        }
                                      }

                                  ),
                                ),


                              ],
                            ),
                          )
                      ),
                    ),
                  ),

                ],
              ),

            ),
          ],
        )

    );
  }
}
///dart pub global activate flutterfire_cli