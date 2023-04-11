import 'package:flutter/material.dart';

import 'route_generator.dart';

void main() {
  runApp(const MyApp());
}

@override
initState() {
  // Add listeners to this class
  print('===>Entry');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Routes'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'First Page',
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print('You have got as result');

                  Navigator.of(context)
                      .pushNamed('/second', arguments: 'Welcome to scond page');

                  //using push() also we can navigate another screen
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         SecondPage(data: 'Hello there from first page'),
                  //   ),
                  // );
                },
                child: Text('Go to Second Page'))
          ],
        ),
      ),
    );
  }
}
