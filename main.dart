import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}

Widget getProjectCard(String projectName, String projectDescription,
    String imagePath, String programmingLanguage, Color color) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      children: [
        ListTile(
          title: Text(
            projectName,
            style: TextStyle(
                fontSize: 20,
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(projectDescription),
        ),
        Image.asset(imagePath),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(5),
          child: Chip(
            labelPadding: EdgeInsets.all(2.0),
            label: Text(
              programmingLanguage,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: color,
            elevation: 6.0,
            shadowColor: Colors.grey[60],
            padding: EdgeInsets.all(8.0),
          ),
        ),
      ],
    ),
  );
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffb0b282),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Color(0xffa8aeae)),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/96888940?v=4"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Abdelrhman',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),

              // ListTile(
              //   leading: Icon(
              //     Icons.phone_android,
              //     color: Colors.teal.shade900,
              //   ),
              //   title: Text("Resume"),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
            ],
          ),
        ),
        backgroundColor: Color(0xff939f9e),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/96888940?v=4"),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Abdelrhman Abouelenan',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Data Scientist",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro'),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
                thickness: 5,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal.shade900,
                        size: 30,
                      ),
                      title: Text(
                        "+20 01008832123",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal.shade900,
                            fontFamily: "Source Sans Pro",
                            fontWeight: FontWeight.bold),
                      ))),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.teal.shade900,
                          size: 30,
                        ),
                        title: Text(
                          "aa5184@fayoum.edu.eg",
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: "Source Sans Pro",
                              fontWeight: FontWeight.bold),
                        )))),
          ],
        )),
      ),
    ));
  }
}
