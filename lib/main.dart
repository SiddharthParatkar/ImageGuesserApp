import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> vehicleNames = [
    'Vintage',
    'Airbus',
    'Fancy Black',
    'Fancy Red',
    'Bus Seats',
  ];

  String currentVehicleName = 'Some Name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: Image.asset(
                'assets/images/action-asphalt-automobile-automotive-627678.jpg',
                height: 300,
                fit: BoxFit.fitHeight,
              ),
            ),
            OutlineButton(
              padding: EdgeInsets.all(10.0),
              onPressed: () => {},
              child: Text(
                'Show Answer',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              borderSide: BorderSide(
                color: Colors.black,
                width: 4.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              highlightedBorderColor: Colors.black,
            ),
            Text(
              currentVehicleName,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 2
                  
              ),
            ),
          ],
        ),
      ),
    );
  }
}
