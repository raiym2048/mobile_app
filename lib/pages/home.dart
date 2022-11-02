import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override createState() => _HomeState();
}

class _HomeState extends State<Home>{
  List list = [];
  late String userDo;

  @override
  void initState() {
    list.addAll(["Lets have a брейк", "milk", "kola", "boso"]);
  }

  void _menuOpen(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Row(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            }, child: Text(" to main")),
            Padding(padding: EdgeInsets.only(left: 15)),
            Text("Our simple menu")
          ],
        )
      );
    })
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Список Элемепнтов"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.menu,),
              onPressed: _menuOpen,
          )
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
                      setState(() {
                        list.removeAt(index);
                      });
                  },
                  ),
                ),
              ),
              onDismissed: (direction){
                //if(direction == DismissDirection.)
                setState(() {
                  list.removeAt(index);
                });
              },
          );
        }

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text("Add Elemtnt"),
              content: TextField(
                onChanged: (String value){
                    userDo = value;
                },
              ),
              actions: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    list.add(userDo);

                  });
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
