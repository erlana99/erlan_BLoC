import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:stat_aprianto/cubit/counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(),
      appBar: AppBar(
        title: Text("Erlan Ardiansyah"),
        backgroundColor: Colors.orange[400],
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.houseboat_outlined),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),  
      ),

      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.orange[400],
          child: SizedBox(
            width: 500,
            height: 450,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 108,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.ibb.co/kDh2CC0/photo-1542463873-e914d2e10f51.jpg"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ), //CirclAvatar
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Stat_Management_BLoC',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    "Mobile 9",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ), //Textstyle
                  ), //Text
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 90,
                    child: RaisedButton(
                      onPressed: () => {
                        Navigator.pushNamed(context, '/catalog')
                      },
                      color: Colors.green[700],
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(Icons.people_alt_outlined),
                            Text('Masuk', style: TextStyle(
                              color: Colors.white,
                            ),),
                          ],
                        ), //Row
                      ), //Padding
                    ), //RaisedButton
                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ),
      
    );
  }
}
