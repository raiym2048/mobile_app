

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/pages/register.dart';

bool logB = false;
bool pasB = false;
late String log_email, log_pass;
List list = [];

class Inform extends StatelessWidget {
  const Inform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    list.addAll(["Lets have a брейк", "milk", "kola", "boso"]);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Just page with no information"),
        centerTitle: true,
        actions: [

        ],
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index){
            return Dismissible(
              key: Key(list[index]),
              child: Card(
                child: ListTile(
                  title: Text(list[index]),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.grey[900],
                    ), onPressed: () {

                  },
                  ),
                ),
              ),


            );
          }

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text("Add Elemtnt"),
              content: TextField(

              ),

              actions: [
                ElevatedButton(onPressed: (){

                  //list.add(userDo);
                  // FirebaseFirestore.instance.collection('items').add({'item': list});
                  Navigator.of(context).pop();
                }, child: Text("Add"))
              ],
            );
          });
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(
          Icons.add_box,
          color: Colors.white,

        ),
      ),
    );
  }
}
