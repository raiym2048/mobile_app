import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Log extends StatelessWidget {
  const Log({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        Navigator.pushNamed(context, '/home');
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
                    )

                  ),
                ),
                SizedBox(height: 20),

                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Not a member?", style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text(" Register now!", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),

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
