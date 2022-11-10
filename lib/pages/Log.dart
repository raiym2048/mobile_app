

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/pages/register.dart';

bool logB = false;
bool pasB = false;
late String log_email, log_pass;
class Log extends StatelessWidget {
  const Log({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(password);

    return Scaffold(
      backgroundColor: Colors.grey[300],
        body:SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_android,
                size: 100,),
                SizedBox(height: 20,),
                Text(
                  "Hello again!",
                style: GoogleFonts.bebasNeue(
                fontWeight: FontWeight.bold,
                  fontSize: 40,

                ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                      child:Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          onChanged: (String value){
                            log_email = value;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                  ),
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        onChanged: (String value){
                          log_pass = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        for(var i = 0;i < password.length;i++){
                          if(password[i] == log_pass && email[i] == log_email){
                            pasB = true;

                          }
                        }
                        if(pasB){

                          Navigator.pushNamed(context, '/menu');
                        }
                        else{
                          print("Incorrect password or email");
                        }

                      },

                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("Sign In",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    )

                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(



                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                              Text("Not a member?", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                backgroundColor: Colors.white,
                                color: Colors.black,

                            ),
                          ),
                          SizedBox(width: 20),

                          Container(

                            child: ElevatedButton(onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                                child:
                                Text("Register now!", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  backgroundColor: Colors.white,
                                ),
                                )),
                          ),
                        ],
                      )
                  ),

              ],
            ),
          ),
        ),
    );
  }
}
