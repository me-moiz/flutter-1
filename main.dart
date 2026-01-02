import 'package:flutter/material.dart';

import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var name=["Moiz","Ali","Fahad","Rayan","Ali","Hamza","Fahad","Rayan","Ali","Fahad","Rayan","Ali","Fahad"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Rayan Ahmed"),
              accountEmail: Text("rayan@gmail.com"),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("images/avtar.png"),),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/avtar1.png"),),
                CircleAvatar(foregroundImage: AssetImage("images/avtar1.png"),),
                CircleAvatar(foregroundImage: AssetImage("images/avtar1.png"),),
                CircleAvatar(foregroundImage: AssetImage("images/avtar1.png"),),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.cyan,),
              title: Text("Home"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shop"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites"),
              onTap: (){

              },
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Red"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Green"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Blue"),
              onTap: (){

              },
            ),
          ],
        ),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return ListTile(
            leading: Text('${index+1}',style:TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight:FontWeight.bold),
            ),
            title: Text(name[index],style:TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight:FontWeight.bold , decoration: TextDecoration.underline,
              letterSpacing: 2.0,
              decorationStyle: TextDecorationStyle.dashed,
              shadows: [
                Shadow(
                  color: Colors.greenAccent,
                  offset: Offset(2, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            ),
            subtitle: Text("Student"),
            trailing: Icon(Icons.apple, size: 50, color: Colors.green)
        );
        return Text(name[index],style: TextStyle(fontSize: 25),);
      },
        itemCount: name.length,
        separatorBuilder: (context,index){
          return Divider(height: 25,thickness: 5,);
        },
      ),
    );
  }
}